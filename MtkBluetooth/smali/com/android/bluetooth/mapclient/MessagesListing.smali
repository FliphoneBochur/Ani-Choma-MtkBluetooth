.class Lcom/android/bluetooth/mapclient/MessagesListing;
.super Ljava/lang/Object;
.source "MessagesListing.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MessagesListing"


# instance fields
.field private final mMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/mapclient/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/MessagesListing;->mMessages:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/mapclient/MessagesListing;->parse(Ljava/io/InputStream;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/mapclient/Message;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MessagesListing;->mMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 5

    .line 45
    const-string v0, "MessagesListing"

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 46
    const-string v2, "utf-8"

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 48
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    .line 49
    :goto_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    .line 50
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_2

    .line 52
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "msg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 54
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 56
    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 57
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 61
    :cond_1
    :try_start_1
    new-instance v2, Lcom/android/bluetooth/mapclient/Message;

    invoke-direct {v2, p1}, Lcom/android/bluetooth/mapclient/Message;-><init>(Ljava/util/HashMap;)V

    .line 62
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MessagesListing;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    goto :goto_2

    .line 63
    :catch_0
    move-exception p1

    .line 65
    :try_start_2
    const-string p1, "Invalid <msg/>"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_2
    :goto_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 76
    :catch_1
    move-exception p1

    .line 77
    const-string v1, "I/O error when parsing XML"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 74
    :catch_2
    move-exception p1

    .line 75
    const-string v1, "XML parser error when parsing XML"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    :cond_3
    nop

    .line 79
    :goto_3
    return-void
.end method
