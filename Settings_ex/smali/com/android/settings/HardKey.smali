.class public Lcom/android/settings_ex/HardKey;
.super Landroid/app/Activity;
.source "HardKey.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCase1:Landroid/widget/ImageView;

.field private mCase2:Landroid/widget/ImageView;

.field private mChangeKey:Landroid/widget/RadioButton;

.field private mGroup:Landroid/widget/RadioGroup;

.field private mKeyChange:Ljava/lang/String;

.field private mNotChangeKey:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const-string v0, "HardKey"

    iput-object v0, p0, Lcom/android/settings_ex/HardKey;->TAG:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/HardKey;->mKeyChange:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/HardKey;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/HardKey;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings_ex/HardKey;->mCase1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/HardKey;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/HardKey;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings_ex/HardKey;->mCase2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/HardKey;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/HardKey;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings_ex/HardKey;->mNotChangeKey:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/HardKey;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/HardKey;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings_ex/HardKey;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/HardKey;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/HardKey;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/settings_ex/HardKey;->mChangeKey:Landroid/widget/RadioButton;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 105
    :pswitch_0
    const-string v0, "persist.sys.key.lock"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/HardKey;->mNotChangeKey:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 109
    :pswitch_1
    const-string v0, "persist.sys.key.lock"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/HardKey;->mChangeKey:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f00df
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v1, 0x7f040060

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/HardKey;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/android/settings_ex/HardKey;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 36
    .local v0, "actionBar":Landroid/app/ActionBar;
    const v1, 0x7f090be8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 37
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 38
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 42
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 92
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/settings_ex/HardKey;->finish()V

    .line 95
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 46
    const v0, 0x7f0f00df

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/HardKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/HardKey;->mCase1:Landroid/widget/ImageView;

    .line 47
    const v0, 0x7f0f00e0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/HardKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ex/HardKey;->mCase2:Landroid/widget/ImageView;

    .line 49
    iget-object v0, p0, Lcom/android/settings_ex/HardKey;->mCase1:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/HardKey;->mCase2:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v0, 0x7f0f00dd

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/HardKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings_ex/HardKey;->mNotChangeKey:Landroid/widget/RadioButton;

    .line 53
    const v0, 0x7f0f00de

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/HardKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings_ex/HardKey;->mChangeKey:Landroid/widget/RadioButton;

    .line 55
    const v0, 0x7f0f00dc

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/HardKey;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/android/settings_ex/HardKey;->mGroup:Landroid/widget/RadioGroup;

    .line 57
    const-string v0, "persist.sys.key.lock"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/HardKey;->mKeyChange:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/HardKey;->mKeyChange:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/HardKey;->mCase1:Landroid/widget/ImageView;

    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/HardKey;->mCase2:Landroid/widget/ImageView;

    const v1, 0x7f020022

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/HardKey;->mNotChangeKey:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/HardKey;->mGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/android/settings_ex/HardKey$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/HardKey$1;-><init>(Lcom/android/settings_ex/HardKey;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 87
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/HardKey;->mCase1:Landroid/widget/ImageView;

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/HardKey;->mCase2:Landroid/widget/ImageView;

    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/HardKey;->mChangeKey:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method
