.class public Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;
.super Ljava/lang/Object;
.source "BmsgTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapclient/BmsgTokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Property"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 89
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->name:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->value:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BMSG >> "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 102
    instance-of v0, p1, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;

    iget-object v0, p1, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->value:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->value:Ljava/lang/String;

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 102
    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/BmsgTokenizer$Property;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
