.class public final synthetic Lcom/android/bluetooth/btservice/storage/-$$Lambda$DatabaseManager$r_7GExCVut1JQUvZHgpYBa0J7oc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/bluetooth/btservice/storage/-$$Lambda$DatabaseManager$r_7GExCVut1JQUvZHgpYBa0J7oc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/bluetooth/btservice/storage/-$$Lambda$DatabaseManager$r_7GExCVut1JQUvZHgpYBa0J7oc;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/storage/-$$Lambda$DatabaseManager$r_7GExCVut1JQUvZHgpYBa0J7oc;-><init>()V

    sput-object v0, Lcom/android/bluetooth/btservice/storage/-$$Lambda$DatabaseManager$r_7GExCVut1JQUvZHgpYBa0J7oc;->INSTANCE:Lcom/android/bluetooth/btservice/storage/-$$Lambda$DatabaseManager$r_7GExCVut1JQUvZHgpYBa0J7oc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/bluetooth/btservice/storage/Metadata;

    check-cast p2, Lcom/android/bluetooth/btservice/storage/Metadata;

    invoke-static {p1, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->lambda$getMostRecentlyConnectedDevices$0(Lcom/android/bluetooth/btservice/storage/Metadata;Lcom/android/bluetooth/btservice/storage/Metadata;)I

    move-result p1

    return p1
.end method
