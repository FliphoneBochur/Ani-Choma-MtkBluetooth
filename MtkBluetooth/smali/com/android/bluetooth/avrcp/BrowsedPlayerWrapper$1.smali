.class Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$1;
.super Ljava/util/LinkedHashMap;
.source "BrowsedPlayerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Lcom/android/bluetooth/avrcp/ListItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;I)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$1;->this$0:Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper;

    invoke-direct {p0, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/avrcp/ListItem;",
            ">;>;)Z"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/BrowsedPlayerWrapper$1;->size()I

    move-result p1

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
