.class public Landroid/net/ScanResultInfoParcelable;
.super Ljava/lang/Object;
.source "ScanResultInfoParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/ScanResultInfoParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bssid:Ljava/lang/String;

.field public informationElements:[Landroid/net/InformationElementParcelable;

.field public ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Landroid/net/ScanResultInfoParcelable$1;

    invoke-direct {v0}, Landroid/net/ScanResultInfoParcelable$1;-><init>()V

    sput-object v0, Landroid/net/ScanResultInfoParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 41
    if-gez v1, :cond_0

    return-void

    .line 43
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ScanResultInfoParcelable;->ssid:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 50
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    return-void

    .line 45
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ScanResultInfoParcelable;->bssid:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2

    .line 50
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    return-void

    .line 47
    :cond_2
    :try_start_2
    sget-object v2, Landroid/net/InformationElementParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/InformationElementParcelable;

    iput-object v2, p0, Landroid/net/ScanResultInfoParcelable;->informationElements:[Landroid/net/InformationElementParcelable;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 50
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    return-void

    .line 50
    :cond_3
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    nop

    .line 52
    return-void

    .line 50
    :catchall_0
    move-exception v2

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 51
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget-object v1, p0, Landroid/net/ScanResultInfoParcelable;->ssid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Landroid/net/ScanResultInfoParcelable;->bssid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Landroid/net/ScanResultInfoParcelable;->informationElements:[Landroid/net/InformationElementParcelable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 34
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 36
    return-void
.end method
