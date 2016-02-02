.class public Landroid/app/ActivityManager$SmartShowRunningTaskInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartShowRunningTaskInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$SmartShowRunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public activityFlags:I

.field public baseActivity:Landroid/content/ComponentName;

.field public id:I

.field public orientation:I

.field public topActivity:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2919
    new-instance v0, Landroid/app/ActivityManager$SmartShowRunningTaskInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$SmartShowRunningTaskInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2895
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 2928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2929
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 2930
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/ActivityManager$1;

    .prologue
    .line 2866
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2899
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 2912
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;->id:I

    .line 2913
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 2914
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2915
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;->activityFlags:I

    .line 2916
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;->orientation:I

    .line 2917
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2904
    iget v0, p0, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2905
    iget-object v0, p0, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 2906
    iget-object v0, p0, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 2907
    iget v0, p0, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;->activityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2908
    iget v0, p0, Landroid/app/ActivityManager$SmartShowRunningTaskInfo;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2909
    return-void
.end method
