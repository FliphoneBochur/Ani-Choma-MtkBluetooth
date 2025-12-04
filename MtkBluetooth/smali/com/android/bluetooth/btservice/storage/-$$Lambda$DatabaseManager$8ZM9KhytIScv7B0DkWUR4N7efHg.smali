.class public final synthetic Lcom/android/bluetooth/btservice/storage/-$$Lambda$DatabaseManager$8ZM9KhytIScv7B0DkWUR4N7efHg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/btservice/storage/-$$Lambda$DatabaseManager$8ZM9KhytIScv7B0DkWUR4N7efHg;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/-$$Lambda$DatabaseManager$8ZM9KhytIScv7B0DkWUR4N7efHg;->f$0:Ljava/lang/String;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, p1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->lambda$removeUnusedMetadata$1(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method
