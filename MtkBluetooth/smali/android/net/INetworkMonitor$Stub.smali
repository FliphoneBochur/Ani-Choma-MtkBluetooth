.class public abstract Landroid/net/INetworkMonitor$Stub;
.super Landroid/os/Binder;
.source "INetworkMonitor.java"

# interfaces
.implements Landroid/net/INetworkMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkMonitor$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_forceReevaluation:I = 0x5

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_launchCaptivePortalApp:I = 0x2

.field static final TRANSACTION_notifyCaptivePortalAppFinished:I = 0x3

.field static final TRANSACTION_notifyDnsResponse:I = 0x7

.field static final TRANSACTION_notifyLinkPropertiesChanged:I = 0xa

.field static final TRANSACTION_notifyNetworkCapabilitiesChanged:I = 0xb

.field static final TRANSACTION_notifyNetworkConnected:I = 0x8

.field static final TRANSACTION_notifyNetworkDisconnected:I = 0x9

.field static final TRANSACTION_notifyPrivateDnsChanged:I = 0x6

.field static final TRANSACTION_setAcceptPartialConnectivity:I = 0x4

.field static final TRANSACTION_start:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    const-string v0, "android$net$INetworkMonitor"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/INetworkMonitor$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 72
    sget-object v0, Landroid/net/INetworkMonitor$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkMonitor$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Landroid/net/INetworkMonitor$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitor;
    .locals 2

    .line 80
    if-nez p0, :cond_0

    .line 81
    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_0
    sget-object v0, Landroid/net/INetworkMonitor$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetworkMonitor;

    if-eqz v1, :cond_1

    .line 85
    check-cast v0, Landroid/net/INetworkMonitor;

    return-object v0

    .line 87
    :cond_1
    new-instance v0, Landroid/net/INetworkMonitor$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/INetworkMonitor$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/net/INetworkMonitor;
    .locals 1

    .line 523
    sget-object v0, Landroid/net/INetworkMonitor$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkMonitor;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/INetworkMonitor;)Z
    .locals 1

    .line 513
    sget-object v0, Landroid/net/INetworkMonitor$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkMonitor;

    if-nez v0, :cond_1

    .line 516
    if-eqz p0, :cond_0

    .line 517
    sput-object p0, Landroid/net/INetworkMonitor$Stub$Proxy;->sDefaultImpl:Landroid/net/INetworkMonitor;

    .line 518
    const/4 p0, 0x1

    return p0

    .line 520
    :cond_0
    const/4 p0, 0x0

    return p0

    .line 514
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 91
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    sget-object v0, Landroid/net/INetworkMonitor$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 96
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 212
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p0}, Landroid/net/INetworkMonitor$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    return v2

    .line 219
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p0}, Landroid/net/INetworkMonitor$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    return v2

    .line 199
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 202
    sget-object p1, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/net/NetworkCapabilities;

    goto :goto_0

    .line 205
    :cond_0
    nop

    .line 207
    :goto_0
    invoke-virtual {p0, v1}, Landroid/net/INetworkMonitor$Stub;->notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V

    .line 208
    return v2

    .line 186
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 189
    sget-object p1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/net/LinkProperties;

    goto :goto_1

    .line 192
    :cond_1
    nop

    .line 194
    :goto_1
    invoke-virtual {p0, v1}, Landroid/net/INetworkMonitor$Stub;->notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)V

    .line 195
    return v2

    .line 180
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Landroid/net/INetworkMonitor$Stub;->notifyNetworkDisconnected()V

    .line 182
    return v2

    .line 160
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 163
    sget-object p1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/LinkProperties;

    goto :goto_2

    .line 166
    :cond_2
    move-object p1, v1

    .line 169
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_3

    .line 170
    sget-object p3, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/net/NetworkCapabilities;

    goto :goto_3

    .line 173
    :cond_3
    nop

    .line 175
    :goto_3
    invoke-virtual {p0, p1, v1}, Landroid/net/INetworkMonitor$Stub;->notifyNetworkConnected(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    .line 176
    return v2

    .line 152
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 155
    invoke-virtual {p0, p1}, Landroid/net/INetworkMonitor$Stub;->notifyDnsResponse(I)V

    .line 156
    return v2

    .line 139
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 142
    sget-object p1, Landroid/net/PrivateDnsConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/net/PrivateDnsConfigParcel;

    goto :goto_4

    .line 145
    :cond_4
    nop

    .line 147
    :goto_4
    invoke-virtual {p0, v1}, Landroid/net/INetworkMonitor$Stub;->notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)V

    .line 148
    return v2

    .line 131
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 134
    invoke-virtual {p0, p1}, Landroid/net/INetworkMonitor$Stub;->forceReevaluation(I)V

    .line 135
    return v2

    .line 125
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Landroid/net/INetworkMonitor$Stub;->setAcceptPartialConnectivity()V

    .line 127
    return v2

    .line 117
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 120
    invoke-virtual {p0, p1}, Landroid/net/INetworkMonitor$Stub;->notifyCaptivePortalAppFinished(I)V

    .line 121
    return v2

    .line 111
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroid/net/INetworkMonitor$Stub;->launchCaptivePortalApp()V

    .line 113
    return v2

    .line 105
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Landroid/net/INetworkMonitor$Stub;->start()V

    .line 107
    return v2

    .line 100
    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xfffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
