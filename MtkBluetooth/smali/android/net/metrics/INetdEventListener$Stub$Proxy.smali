.class Landroid/net/metrics/INetdEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetdEventListener.java"

# interfaces
.implements Landroid/net/metrics/INetdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/INetdEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/metrics/INetdEventListener;


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedVersion:I

    .line 225
    const-string v0, "-1"

    iput-object v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 222
    iput-object p1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 223
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 228
    iget-object v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 232
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 385
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 389
    :try_start_1
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 391
    if-nez v2, :cond_0

    .line 392
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 393
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/metrics/INetdEventListener;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 393
    monitor-exit p0

    return-object v2

    .line 396
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 397
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 399
    :try_start_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 401
    goto :goto_0

    .line 399
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 401
    throw v2

    .line 403
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    .line 384
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    iget v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 364
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 367
    :try_start_0
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 368
    iget-object v2, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 369
    if-nez v2, :cond_0

    .line 370
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 371
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/metrics/INetdEventListener;->getInterfaceVersion()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 371
    return v2

    .line 374
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 375
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 379
    goto :goto_0

    .line 377
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 379
    throw v2

    .line 381
    :cond_1
    :goto_0
    iget v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public onConnectEvent(IIILjava/lang/String;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 280
    :try_start_0
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget-object v1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 288
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 289
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/net/metrics/INetdEventListener;->onConnectEvent(IIILjava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 290
    return-void

    .line 294
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 295
    nop

    .line 296
    return-void

    .line 294
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 295
    throw p1
.end method

.method public onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 238
    :try_start_0
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 239
    move v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 240
    move v4, p2

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    move v5, p3

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    move/from16 v6, p4

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    move-object/from16 v7, p5

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    move-object/from16 v8, p6

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 245
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    move/from16 v10, p8

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    move-object v2, p0

    iget-object v2, v2, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v11, 0x1

    invoke-interface {v2, v11, v1, v3, v11}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 248
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 249
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Landroid/net/metrics/INetdEventListener;->onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 250
    return-void

    .line 254
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 255
    nop

    .line 256
    return-void

    .line 254
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 255
    throw v0
.end method

.method public onNat64PrefixEvent(IZLjava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 346
    :try_start_0
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget-object v2, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 352
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 353
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/net/metrics/INetdEventListener;->onNat64PrefixEvent(IZLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 354
    return-void

    .line 358
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 359
    nop

    .line 360
    return-void

    .line 358
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 359
    throw p1
.end method

.method public onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 261
    :try_start_0
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    const/4 v1, 0x1

    if-eqz p4, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-object v2, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 267
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 268
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/net/metrics/INetdEventListener;->onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 269
    return-void

    .line 273
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 274
    nop

    .line 275
    return-void

    .line 273
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 274
    throw p1
.end method

.method public onTcpSocketStatsEvent([I[I[I[I[I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 326
    :try_start_0
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 328
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 329
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 330
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 331
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 332
    iget-object v1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 333
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 334
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Landroid/net/metrics/INetdEventListener;->onTcpSocketStatsEvent([I[I[I[I[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 335
    return-void

    .line 339
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 340
    nop

    .line 341
    return-void

    .line 339
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 340
    throw p1
.end method

.method public onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 301
    :try_start_0
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 302
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    move/from16 v4, p2

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    move/from16 v5, p3

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    move/from16 v6, p4

    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    move-object/from16 v7, p5

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 307
    move-object/from16 v8, p6

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    move-object/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    move/from16 v10, p8

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    move/from16 v11, p9

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    move-wide/from16 v12, p10

    invoke-virtual {v1, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    .line 312
    move-object/from16 v2, p0

    iget-object v2, v2, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-interface {v2, v3, v1, v14, v15}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 313
    if-nez v2, :cond_0

    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 314
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-wide/from16 v12, p10

    invoke-interface/range {v2 .. v13}, Landroid/net/metrics/INetdEventListener;->onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 315
    return-void

    .line 319
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    nop

    .line 321
    return-void

    .line 319
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    throw v0
.end method
