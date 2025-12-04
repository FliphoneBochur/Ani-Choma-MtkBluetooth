.class Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;
.super Ljava/lang/Object;
.source "AvrcpCoverArtManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvrcpBipSession"
.end annotation


# instance fields
.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUuids:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 97
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;->mUuids:Ljava/util/Map;

    .line 95
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;->mHandles:Ljava/util/Map;

    .line 98
    iput-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 99
    return-void
.end method


# virtual methods
.method public clearHandleUuids()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;->mUuids:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 116
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;->mHandles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 117
    return-void
.end method

.method public getHandleUuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 102
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 103
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;->mUuids:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    if-eqz v1, :cond_1

    return-object v1

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;->mHandles:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-object v0
.end method

.method public getSessionHandles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;->mUuids:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getUuidHandle(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpCoverArtManager$AvrcpBipSession;->mHandles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
