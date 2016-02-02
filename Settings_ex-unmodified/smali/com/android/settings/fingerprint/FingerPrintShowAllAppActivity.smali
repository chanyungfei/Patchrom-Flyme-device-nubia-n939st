.class public Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;
.super Landroid/app/Activity;
.source "FingerPrintShowAllAppActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;
    }
.end annotation


# instance fields
.field private apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private fingerPrintName:Ljava/lang/String;

.field private fingprintSelectAppList:Landroid/widget/ListView;

.field private mAdapter:Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;

.field private mPackageName:Ljava/lang/String;

.field private mSwitch:Landroid/widget/Switch;

.field private pManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->apps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->pManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private filterAllApplication(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "applist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fingerprint/FingerPrintProvider;->FINGER_PRINT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/fingerprint/FingerPrintDatabaseHelper;->FINGER_PRINT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 187
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 188
    const-string v0, "VIM"

    const-string v1, "[filterAllApplication] cursor is null! just return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 219
    :goto_0
    return-object p1

    .line 193
    :cond_0
    const-string v0, "VIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[filterAllApplication] cursor counts "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 195
    const-string v0, "VIM"

    const-string v1, "[filterAllApplication] cursor has no any data! just return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 211
    .local v8, "fpName":Ljava/lang/String;
    .local v10, "packageName":Ljava/lang/String;
    :cond_1
    :try_start_0
    iput-object v10, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->mPackageName:Ljava/lang/String;

    .line 201
    .end local v8    # "fpName":Ljava/lang/String;
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 202
    const-string v0, "fp_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 203
    .restart local v8    # "fpName":Ljava/lang/String;
    const-string v0, "fp_associated_package_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 204
    .restart local v10    # "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->fingerPrintName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_2

    .line 206
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    invoke-interface {p1, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 217
    .end local v8    # "fpName":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 214
    :catch_0
    move-exception v7

    .line 215
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "VIM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[filterAllApplication] exception! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getAssociatedSwitchStatus()Z
    .locals 2

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->fingerPrintName:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/android/settings/fingerprint/FingerPrintUtils;->getAssociateApplicationStatus(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 173
    .local v0, "associatedState":Z
    return v0
.end method

.method private savePackageInfoToDababase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fingerprint"    # Ljava/lang/String;
    .param p2, "appLabel"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ActivityName"    # Ljava/lang/String;

    .prologue
    .line 164
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 166
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "fp_associated_package_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "fp_associated_activity_name"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {p0, p1, v0}, Lcom/android/settings/fingerprint/FingerPrintUtils;->updateFingerPrintByName(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 169
    return-void
.end method

.method private setAssociatedSwitchStatus(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 177
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 178
    .local v0, "values":Landroid/content/ContentValues;
    const-string v2, "fp_associated_status"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->fingerPrintName:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/android/settings/fingerprint/FingerPrintUtils;->updateFingerPrintByName(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 180
    return-void

    .line 178
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateAppList()V
    .locals 3

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 109
    .local v0, "mainIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->pManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->apps:Ljava/util/List;

    .line 111
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->apps:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->filterAllApplication(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->apps:Ljava/util/List;

    .line 112
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "paramCompoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v1, 0x1

    .line 130
    const-string v2, "VIM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FingerPrintShowAllAppActivity onCheckedChanged] isChecked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 132
    invoke-direct {p0, p2}, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->setAssociatedSwitchStatus(Z)V

    .line 134
    if-eqz p2, :cond_1

    move v0, v1

    .line 136
    .local v0, "state":I
    :goto_0
    if-ne v1, v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "associatedSwitchState"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    :cond_0
    if-eqz p2, :cond_2

    .line 142
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->updateAppList()V

    .line 146
    :goto_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->mAdapter:Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;->notifyDataSetChanged()V

    .line 147
    return-void

    .line 134
    .end local v0    # "state":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 144
    .restart local v0    # "state":I
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->apps:Ljava/util/List;

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v2, 0x7f04005b

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 60
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "fingerprintName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->fingerPrintName:Ljava/lang/String;

    .line 61
    const-string v2, "VIM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FingerPrintShowAllAppActivity] onCreate fingerPrintName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->fingerPrintName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->fingerPrintName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    const v2, 0x7f0f00d3

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->mSwitch:Landroid/widget/Switch;

    .line 64
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    const v2, 0x7f0f00d4

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->fingprintSelectAppList:Landroid/widget/ListView;

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->pManager:Landroid/content/pm/PackageManager;

    .line 69
    new-instance v2, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;-><init>(Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->mAdapter:Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;

    .line 71
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->fingprintSelectAppList:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 74
    .local v0, "actionbar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 75
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 77
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 83
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v4, 0x7f0f001e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    .line 119
    .local v2, "appLabelcheck":Landroid/widget/CheckedTextView;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 120
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->apps:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 121
    .local v0, "activityNames":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->apps:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 122
    .local v3, "packageNames":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->apps:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->pManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "appLabel":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->fingerPrintName:Ljava/lang/String;

    invoke-direct {p0, v4, v1, v3, v0}, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->savePackageInfoToDababase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->finish()V

    .line 127
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 151
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 158
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 153
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->onBackPressed()V

    .line 154
    const/4 v0, 0x1

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 89
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 101
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->fingprintSelectAppList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->mAdapter:Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity$FingerprintAllAppAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->getAssociatedSwitchStatus()Z

    move-result v0

    .line 104
    .local v0, "state":Z
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerPrintShowAllAppActivity;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 105
    return-void
.end method
