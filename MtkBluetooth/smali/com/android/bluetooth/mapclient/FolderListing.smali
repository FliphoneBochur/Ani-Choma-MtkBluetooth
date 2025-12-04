.class Lcom/android/bluetooth/mapclient/FolderListing;
.super Ljava/lang/Object;
.source "FolderListing.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FolderListing"


# instance fields
.field private final mFolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/FolderListing;->mFolders:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/mapclient/FolderListing;->parse(Ljava/io/InputStream;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/FolderListing;->mFolders:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 4

    .line 44
    const-string v0, "FolderListing"

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 45
    const-string v2, "utf-8"

    invoke-interface {v1, p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 47
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    .line 48
    :goto_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    .line 49
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v2, "folder"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/FolderListing;->mFolders:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const-string v3, "name"

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_1
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception p1

    .line 63
    const-string v1, "I/O error when parsing XML"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 60
    :catch_1
    move-exception p1

    .line 61
    const-string v1, "XML parser error when parsing XML"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    :cond_2
    nop

    .line 65
    :goto_2
    return-void
.end method
