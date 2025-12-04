.class public abstract Landroid/net/INetworkStackStatusCallback$Stub;
.super Landroid/os/Binder;
.source "INetworkStackStatusCallback.java"

# interfaces
.implements Landroid/net/INetworkStackStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStackStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkStackStatusCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onStatusAvailable:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    const-string v0, "android$net$INetworkStackStatusCallback"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/INetworkStackStatusCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 42
    sget-object v0, Landroid/net/INetworkStackStatusCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkStackStatusCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 36
    sget-object v0, Landroid/net/INetworkStackStatusCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackStatusCallback;
    .locals 2

    .line 50
    if-nez p0, :cond_0

    .line 51
    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_0
    sget-object v0, Landroid/net/INetworkStackStatusCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetworkStackStatusCallback;

    if-eqz v1, :cond_1

    .line 55
    check-cast v0, Landroid/net/INetworkStackStatusCallback;

    return-object v0

    .line 57
    :cond_1
    new-instance v0, Landroid/net/INetworkStackStatusCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/INetworkStackStatusCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/net/INetworkStackStatusCallback;
    .locals 1

    .line 197
    sget-object v0, Landroid/net/INetworkStackStatusCallback$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkStackStatusCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/INetworkStackStatusCallback;)Z
    .locals 1

    .line 187
    sget-object v0, Landroid/net/INetworkStackStatusCallback$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkStackStatusCallback;

    if-nez v0, :cond_1

    .line 190
    if-eqz p0, :cond_0

    .line 191
    sput-object p0, Landroid/net/INetworkStackStatusCallback$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkStackStatusCallback;

    .line 192
    const/4 p0, 0x1

    return p0

    .line 194
    :cond_0
    const/4 p0, 0x0

    return p0

    .line 188
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 61
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    sget-object v0, Landroid/net/INetworkStackStatusCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 66
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 83
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p0}, Landroid/net/INetworkStackStatusCallback$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return v1

    .line 90
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p0}, Landroid/net/INetworkStackStatusCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    return v1

    .line 70
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return v1

    .line 75
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 78
    invoke-virtual {p0, p1}, Landroid/net/INetworkStackStatusCallback$Stub;->onStatusAvailable(I)V

    .line 79
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xfffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
