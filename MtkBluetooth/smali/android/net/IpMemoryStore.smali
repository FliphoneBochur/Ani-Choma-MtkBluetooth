.class public Landroid/net/IpMemoryStore;
.super Landroid/net/IpMemoryStoreClient;
.source "IpMemoryStore.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mService:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/net/IIpMemoryStore;",
            ">;"
        }
    .end annotation
.end field

.field private final mTailNode:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/net/IIpMemoryStore;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Landroid/net/IpMemoryStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/IpMemoryStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-direct {p0, p1}, Landroid/net/IpMemoryStoreClient;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Landroid/net/IpMemoryStore;->mService:Ljava/util/concurrent/CompletableFuture;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Landroid/net/IpMemoryStore;->mService:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/IpMemoryStore;->mTailNode:Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    invoke-virtual {p0, p1}, Landroid/net/IpMemoryStore;->getModuleNetworkStackClient(Landroid/content/Context;)Landroid/net/networkstack/ModuleNetworkStackClient;

    move-result-object p1

    new-instance v0, Landroid/net/IpMemoryStore$1;

    invoke-direct {v0, p0}, Landroid/net/IpMemoryStore$1;-><init>(Landroid/net/IpMemoryStore;)V

    invoke-virtual {p1, v0}, Landroid/net/networkstack/ModuleNetworkStackClient;->fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Landroid/net/IpMemoryStore;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 36
    iget-object p0, p0, Landroid/net/IpMemoryStore;->mService:Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method public static getMemoryStore(Landroid/content/Context;)Landroid/net/IpMemoryStore;
    .locals 1

    .line 96
    new-instance v0, Landroid/net/IpMemoryStore;

    invoke-direct {v0, p0}, Landroid/net/IpMemoryStore;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$runWhenServiceReady$0(Ljava/util/function/Consumer;Landroid/net/IIpMemoryStore;Ljava/lang/Throwable;)Landroid/net/IIpMemoryStore;
    .locals 2

    .line 73
    if-eqz p2, :cond_0

    .line 75
    sget-object p0, Landroid/net/IpMemoryStore;->TAG:Ljava/lang/String;

    const-string v0, "Error fetching IpMemoryStore"

    invoke-static {p0, v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    return-object p1

    .line 80
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 81
    :catch_0
    move-exception p0

    .line 82
    sget-object p2, Landroid/net/IpMemoryStore;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception occured: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    return-object p1
.end method

.method static synthetic lambda$runWhenServiceReady$1(Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;
    .locals 1

    .line 72
    new-instance v0, Landroid/net/-$$Lambda$IpMemoryStore$pFctTFAvh_Nxb_aTb0gjNsixGeM;

    invoke-direct {v0, p0}, Landroid/net/-$$Lambda$IpMemoryStore$pFctTFAvh_Nxb_aTb0gjNsixGeM;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getModuleNetworkStackClient(Landroid/content/Context;)Landroid/net/networkstack/ModuleNetworkStackClient;
    .locals 0

    .line 90
    invoke-static {p1}, Landroid/net/networkstack/ModuleNetworkStackClient;->getInstance(Landroid/content/Context;)Landroid/net/networkstack/ModuleNetworkStackClient;

    move-result-object p1

    return-object p1
.end method

.method protected runWhenServiceReady(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/IIpMemoryStore;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Landroid/net/IpMemoryStore;->mTailNode:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Landroid/net/-$$Lambda$IpMemoryStore$LPW97BoNSL4rh_RVPiAHfCbmGHU;

    invoke-direct {v1, p1}, Landroid/net/-$$Lambda$IpMemoryStore$LPW97BoNSL4rh_RVPiAHfCbmGHU;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndUpdate(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    .line 86
    return-void
.end method
