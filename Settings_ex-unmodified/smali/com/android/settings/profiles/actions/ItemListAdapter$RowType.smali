.class public final enum Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;
.super Ljava/lang/Enum;
.source "ItemListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/profiles/actions/ItemListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

.field public static final enum AIRPLANEMODE_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

.field public static final enum CONNECTION_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

.field public static final enum HEADER_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

.field public static final enum LOCKSCREENMODE_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

.field public static final enum NAME_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

.field public static final enum RINGMODE_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

.field public static final enum TRIGGER_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

.field public static final enum VOLUME_STREAM_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    const-string v1, "HEADER_ITEM"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;->HEADER_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    .line 32
    new-instance v0, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    const-string v1, "CONNECTION_ITEM"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;->CONNECTION_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    .line 33
    new-instance v0, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    const-string v1, "VOLUME_STREAM_ITEM"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;->VOLUME_STREAM_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    .line 34
    new-instance v0, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    const-string v1, "NAME_ITEM"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;->NAME_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    .line 35
    new-instance v0, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    const-string v1, "RINGMODE_ITEM"

    invoke-direct {v0, v1, v7}, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;->RINGMODE_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    .line 36
    new-instance v0, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    const-string v1, "AIRPLANEMODE_ITEM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;->AIRPLANEMODE_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    .line 37
    new-instance v0, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    const-string v1, "LOCKSCREENMODE_ITEM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;->LOCKSCREENMODE_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    .line 38
    new-instance v0, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    const-string v1, "TRIGGER_ITEM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;->TRIGGER_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    .line 30
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    sget-object v1, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;->HEADER_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;->CONNECTION_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;->VOLUME_STREAM_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;->NAME_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;->RINGMODE_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;->AIRPLANEMODE_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;->LOCKSCREENMODE_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;->TRIGGER_ITEM:Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;->$VALUES:[Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;->$VALUES:[Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    invoke-virtual {v0}, [Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/profiles/actions/ItemListAdapter$RowType;

    return-object v0
.end method
