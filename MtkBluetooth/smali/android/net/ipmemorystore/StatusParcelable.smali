.class public Landroid/net/ipmemorystore/StatusParcelable;
.super Ljava/lang/Object;
.source "StatusParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/ipmemorystore/StatusParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public resultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Landroid/net/ipmemorystore/StatusParcelable$1;

    invoke-direct {v0}, Landroid/net/ipmemorystore/StatusParcelable$1;-><init>()V

    sput-object v0, Landroid/net/ipmemorystore/StatusParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 36
    if-gez v1, :cond_0

    return-void

    .line 38
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ipmemorystore/StatusParcelable;->resultCode:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 41
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 39
    return-void

    .line 41
    :cond_1
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    nop

    .line 43
    return-void

    .line 41
    :catchall_0
    move-exception v2

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 42
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    iget v0, p0, Landroid/net/ipmemorystore/StatusParcelable;->resultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 29
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 31
    return-void
.end method
