.class public abstract Landroid/net/metrics/INetdEventListener$Stub;
.super Landroid/os/Binder;
.source "INetdEventListener.java"

# interfaces
.implements Landroid/net/metrics/INetdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/INetdEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/INetdEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onConnectEvent:I = 0x3

.field static final TRANSACTION_onDnsEvent:I = 0x1

.field static final TRANSACTION_onNat64PrefixEvent:I = 0x6

.field static final TRANSACTION_onPrivateDnsValidationEvent:I = 0x2

.field static final TRANSACTION_onTcpSocketStatsEvent:I = 0x5

.field static final TRANSACTION_onWakeupEvent:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    const-string v0, "android$net$metrics$INetdEventListener"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/metrics/INetdEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    sget-object v0, Landroid/net/metrics/INetdEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/net/metrics/INetdEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Landroid/net/metrics/INetdEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/metrics/INetdEventListener;
    .locals 2

    .line 64
    if-nez p0, :cond_0

    .line 65
    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_0
    sget-object v0, Landroid/net/metrics/INetdEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/metrics/INetdEventListener;

    if-eqz v1, :cond_1

    .line 69
    check-cast v0, Landroid/net/metrics/INetdEventListener;

    return-object v0

    .line 71
    :cond_1
    new-instance v0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/metrics/INetdEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/net/metrics/INetdEventListener;
    .locals 1

    .line 429
    sget-object v0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->sDefaultImpl:Landroid/net/metrics/INetdEventListener;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/metrics/INetdEventListener;)Z
    .locals 1

    .line 419
    sget-object v0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->sDefaultImpl:Landroid/net/metrics/INetdEventListener;

    if-nez v0, :cond_1

    .line 422
    if-eqz p0, :cond_0

    .line 423
    sput-object p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->sDefaultImpl:Landroid/net/metrics/INetdEventListener;

    .line 424
    const/4 p0, 0x1

    return p0

    .line 426
    :cond_0
    const/4 p0, 0x0

    return p0

    .line 420
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 75
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    sget-object v4, Landroid/net/metrics/INetdEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 80
    const v5, 0x5f4e5446

    const/4 v12, 0x1

    if-eq v1, v5, :cond_2

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 213
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 199
    :pswitch_0
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p0}, Landroid/net/metrics/INetdEventListener$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    return v12

    .line 206
    :pswitch_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p0}, Landroid/net/metrics/INetdEventListener$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    return v12

    .line 185
    :pswitch_2
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v5, v12

    .line 191
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 194
    invoke-virtual {p0, v1, v5, v3, v2}, Landroid/net/metrics/INetdEventListener$Stub;->onNat64PrefixEvent(IZLjava/lang/String;I)V

    .line 195
    return v12

    .line 169
    :pswitch_3
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 180
    move-object v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/net/metrics/INetdEventListener$Stub;->onTcpSocketStatsEvent([I[I[I[I[I)V

    .line 181
    return v12

    .line 143
    :pswitch_4
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 164
    move-object v0, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v9

    move v9, v10

    move-wide v10, v13

    invoke-virtual/range {v0 .. v11}, Landroid/net/metrics/INetdEventListener$Stub;->onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V

    .line 165
    return v12

    .line 125
    :pswitch_5
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 138
    move-object v0, p0

    move v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/net/metrics/INetdEventListener$Stub;->onConnectEvent(IIILjava/lang/String;II)V

    .line 139
    return v12

    .line 111
    :pswitch_6
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    move v5, v12

    .line 120
    :cond_1
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/net/metrics/INetdEventListener$Stub;->onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 121
    return v12

    .line 89
    :pswitch_7
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 106
    move-object v0, p0

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v9

    invoke-virtual/range {v0 .. v8}, Landroid/net/metrics/INetdEventListener$Stub;->onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V

    .line 107
    return v12

    .line 84
    :cond_2
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return v12

    :pswitch_data_0
    .packed-switch 0x1
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
