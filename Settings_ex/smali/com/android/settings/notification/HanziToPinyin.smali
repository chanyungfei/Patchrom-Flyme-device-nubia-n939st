.class public Lcom/android/settings_ex/notification/HanziToPinyin;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/notification/HanziToPinyin$Token;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/settings_ex/notification/HanziToPinyin;


# instance fields
.field private mAsciiTransliterator:Llibcore/icu/Transliterator;

.field private mPinyinTransliterator:Llibcore/icu/Transliterator;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    :try_start_0
    new-instance v1, Llibcore/icu/Transliterator;

    const-string v2, "Han-Latin/Names; Latin-Ascii; Any-Upper"

    invoke-direct {v1, v2}, Llibcore/icu/Transliterator;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings_ex/notification/HanziToPinyin;->mPinyinTransliterator:Llibcore/icu/Transliterator;

    .line 76
    new-instance v1, Llibcore/icu/Transliterator;

    const-string v2, "Latin-Ascii"

    invoke-direct {v1, v2}, Llibcore/icu/Transliterator;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings_ex/notification/HanziToPinyin;->mAsciiTransliterator:Llibcore/icu/Transliterator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "HanziToPinyin"

    const-string v2, "Han-Latin/Names transliterator data is missing, HanziToPinyin is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/settings_ex/notification/HanziToPinyin;
    .locals 2

    .prologue
    .line 88
    const-class v1, Lcom/android/settings_ex/notification/HanziToPinyin;

    monitor-enter v1

    .line 89
    :try_start_0
    sget-object v0, Lcom/android/settings_ex/notification/HanziToPinyin;->sInstance:Lcom/android/settings_ex/notification/HanziToPinyin;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/android/settings_ex/notification/HanziToPinyin;

    invoke-direct {v0}, Lcom/android/settings_ex/notification/HanziToPinyin;-><init>()V

    sput-object v0, Lcom/android/settings_ex/notification/HanziToPinyin;->sInstance:Lcom/android/settings_ex/notification/HanziToPinyin;

    .line 92
    :cond_0
    sget-object v0, Lcom/android/settings_ex/notification/HanziToPinyin;->sInstance:Lcom/android/settings_ex/notification/HanziToPinyin;

    monitor-exit v1

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public hasChineseTransliterator()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/notification/HanziToPinyin;->mPinyinTransliterator:Llibcore/icu/Transliterator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public transliterate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/settings_ex/notification/HanziToPinyin;->hasChineseTransliterator()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/notification/HanziToPinyin;->mPinyinTransliterator:Llibcore/icu/Transliterator;

    invoke-virtual {v0, p1}, Llibcore/icu/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
