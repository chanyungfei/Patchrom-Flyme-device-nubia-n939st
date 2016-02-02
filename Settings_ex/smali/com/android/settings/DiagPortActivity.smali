.class public Lcom/android/settings_ex/DiagPortActivity;
.super Landroid/preference/PreferenceActivity;
.source "DiagPortActivity.java"


# instance fields
.field private final KEY_DIAG_PORT:Ljava/lang/String;

.field private mDiagport:Landroid/preference/CheckBoxPreference;

.field private mIsCancleDilog:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 52
    const-string v0, "diag_port_enable_preference"

    iput-object v0, p0, Lcom/android/settings_ex/DiagPortActivity;->KEY_DIAG_PORT:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/DiagPortActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DiagPortActivity;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/settings_ex/DiagPortActivity;->mIsCancleDilog:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/DiagPortActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DiagPortActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/settings_ex/DiagPortActivity;->mIsCancleDilog:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/DiagPortActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DiagPortActivity;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings_ex/DiagPortActivity;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/DiagPortActivity;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DiagPortActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/DiagPortActivity;->mDiagport:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/DiagPortActivity;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DiagPortActivity;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/DiagPortActivity;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method private getPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ex/DiagPortActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private showPasswordDialog()V
    .locals 6

    .prologue
    .line 82
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings_ex/DiagPortActivity;->mIsCancleDilog:Z

    .line 83
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 84
    .local v2, "passworddialog":Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f04004b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "createlayout":Landroid/view/View;
    const v3, 0x7f0f00bc

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 88
    .local v1, "edittext":Landroid/widget/EditText;
    const/16 v3, 0x81

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 90
    const v3, 0x7f09022c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 91
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 92
    const v3, 0x1040013

    new-instance v4, Lcom/android/settings_ex/DiagPortActivity$1;

    invoke-direct {v4, p0, v1}, Lcom/android/settings_ex/DiagPortActivity$1;-><init>(Lcom/android/settings_ex/DiagPortActivity;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    const v3, 0x1040009

    new-instance v4, Lcom/android/settings_ex/DiagPortActivity$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/DiagPortActivity$2;-><init>(Lcom/android/settings_ex/DiagPortActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    new-instance v3, Lcom/android/settings_ex/DiagPortActivity$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/DiagPortActivity$3;-><init>(Lcom/android/settings_ex/DiagPortActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 145
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 146
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const-string v0, "usb"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DiagPortActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings_ex/DiagPortActivity;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 61
    const v0, 0x7f060023

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DiagPortActivity;->addPreferencesFromResource(I)V

    .line 62
    const-string v0, "diag_port_enable_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DiagPortActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings_ex/DiagPortActivity;->mDiagport:Landroid/preference/CheckBoxPreference;

    .line 63
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/DiagPortActivity;->mDiagport:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/android/settings_ex/DiagPortActivity;->showPasswordDialog()V

    .line 78
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 67
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 68
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "diag_port_enable_preference"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 70
    .local v1, "set":Z
    iget-object v2, p0, Lcom/android/settings_ex/DiagPortActivity;->mDiagport:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 71
    return-void
.end method
