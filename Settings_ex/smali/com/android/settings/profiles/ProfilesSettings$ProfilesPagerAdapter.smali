.class Lcom/android/settings_ex/profiles/ProfilesSettings$ProfilesPagerAdapter;
.super Landroid/support/v13/app/FragmentStatePagerAdapter;
.source "ProfilesSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/profiles/ProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProfilesPagerAdapter"
.end annotation


# instance fields
.field frags:[Landroid/app/Fragment;

.field final synthetic this$0:Lcom/android/settings_ex/profiles/ProfilesSettings;

.field titles:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profiles/ProfilesSettings;Landroid/app/FragmentManager;)V
    .locals 4
    .param p2, "fm"    # Landroid/app/FragmentManager;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 241
    iput-object p1, p0, Lcom/android/settings_ex/profiles/ProfilesSettings$ProfilesPagerAdapter;->this$0:Lcom/android/settings_ex/profiles/ProfilesSettings;

    .line 242
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentStatePagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 238
    new-array v0, v2, [Landroid/app/Fragment;

    new-instance v1, Lcom/android/settings_ex/profiles/ProfilesList;

    invoke-direct {v1}, Lcom/android/settings_ex/profiles/ProfilesList;-><init>()V

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/settings_ex/profiles/ProfilesSettings$ProfilesPagerAdapter;->frags:[Landroid/app/Fragment;

    .line 239
    new-array v0, v2, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings_ex/profiles/ProfilesSettings$ProfilesPagerAdapter;->this$0:Lcom/android/settings_ex/profiles/ProfilesSettings;

    const v2, 0x7f090039

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/profiles/ProfilesSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/settings_ex/profiles/ProfilesSettings$ProfilesPagerAdapter;->titles:[Ljava/lang/String;

    .line 243
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/settings_ex/profiles/ProfilesSettings$ProfilesPagerAdapter;->frags:[Landroid/app/Fragment;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings_ex/profiles/ProfilesSettings$ProfilesPagerAdapter;->frags:[Landroid/app/Fragment;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/settings_ex/profiles/ProfilesSettings$ProfilesPagerAdapter;->titles:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public refreshProfiles()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settings_ex/profiles/ProfilesSettings$ProfilesPagerAdapter;->frags:[Landroid/app/Fragment;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/settings_ex/profiles/ProfilesList;

    invoke-virtual {v0}, Lcom/android/settings_ex/profiles/ProfilesList;->refreshList()V

    .line 262
    return-void
.end method
