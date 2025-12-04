.class public abstract Landroid/net/INetdUnsolicitedEventListener$Stub;
.super Landroid/os/Binder;
.source "INetdUnsolicitedEventListener.java"

# interfaces
.implements Landroid/net/INetdUnsolicitedEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetdUnsolicitedEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onInterfaceAdded:I = 0x6

.field static final TRANSACTION_onInterfaceAddressRemoved:I = 0x5

.field static final TRANSACTION_onInterfaceAddressUpdated:I = 0x4

.field static final TRANSACTION_onInterfaceChanged:I = 0x8

.field static final TRANSACTION_onInterfaceClassActivityChanged:I = 0x1

.field static final TRANSACTION_onInterfaceDnsServerInfo:I = 0x3

.field static final TRANSACTION_onInterfaceLinkStateChanged:I = 0x9

.field static final TRANSACTION_onInterfaceRemoved:I = 0x7

.field static final TRANSACTION_onQuotaLimitReached:I = 0x2

.field static final TRANSACTION_onRouteChanged:I = 0xa

.field static final TRANSACTION_onStrictCleartextDetected:I = 0xb


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    const-string v0, "android$net$INetdUnsolicitedEventListener"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/INetdUnsolicitedEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 72
    sget-object v0, Landroid/net/INetdUnsolicitedEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/net/INetdUnsolicitedEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Landroid/net/INetdUnsolicitedEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetdUnsolicitedEventListener;
    .locals 2

    .line 80
    if-nez p0, :cond_0

    .line 81
    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_0
    sget-object v0, Landroid/net/INetdUnsolicitedEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetdUnsolicitedEventListener;

    if-eqz v1, :cond_1

    .line 85
    check-cast v0, Landroid/net/INetdUnsolicitedEventListener;

    return-object v0

    .line 87
    :cond_1
    new-instance v0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/net/INetdUnsolicitedEventListener;
    .locals 1

    .line 531
    sget-object v0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->sDefaultImpl:Landroid/net/INetdUnsolicitedEventListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/INetdUnsolicitedEventListener;)Z
    .locals 1

    .line 521
    sget-object v0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->sDefaultImpl:Landroid/net/INetdUnsolicitedEventListener;

    if-nez v0, :cond_1

    .line 524
    if-eqz p0, :cond_0

    .line 525
    sput-object p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->sDefaultImpl:Landroid/net/INetdUnsolicitedEventListener;

    .line 526
    const/4 p0, 0x1

    return p0

    .line 528
    :cond_0
    const/4 p0, 0x0

    return p0

    .line 522
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
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    sget-object v0, Landroid/net/INetdUnsolicitedEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 96
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 243
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 229
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p0}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    return v2

    .line 236
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p0}, Landroid/net/INetdUnsolicitedEventListener$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    return v2

    .line 219
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 224
    invoke-virtual {p0, p1, p2}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onStrictCleartextDetected(ILjava/lang/String;)V

    .line 225
    return v2

    .line 205
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v1, v2

    .line 209
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 214
    invoke-virtual {p0, v1, p1, p3, p2}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onRouteChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return v2

    .line 195
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1

    move v1, v2

    .line 200
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    .line 201
    return v2

    .line 185
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    move v1, v2

    .line 190
    :cond_2
    invoke-virtual {p0, p1, v1}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onInterfaceChanged(Ljava/lang/String;Z)V

    .line 191
    return v2

    .line 177
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-virtual {p0, p1}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onInterfaceRemoved(Ljava/lang/String;)V

    .line 181
    return v2

    .line 169
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-virtual {p0, p1}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onInterfaceAdded(Ljava/lang/String;)V

    .line 173
    return v2

    .line 155
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 164
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onInterfaceAddressRemoved(Ljava/lang/String;Ljava/lang/String;II)V

    .line 165
    return v2

    .line 141
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 150
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onInterfaceAddressUpdated(Ljava/lang/String;Ljava/lang/String;II)V

    .line 151
    return v2

    .line 129
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 136
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    .line 137
    return v2

    .line 119
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 124
    invoke-virtual {p0, p1, p2}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onQuotaLimitReached(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return v2

    .line 105
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v4, v2

    goto :goto_0

    :cond_3
    move v4, v1

    .line 109
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 114
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/net/INetdUnsolicitedEventListener$Stub;->onInterfaceClassActivityChanged(ZIJI)V

    .line 115
    return v2

    .line 100
    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v2

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
