.class public Lcom/connectsdk/core/MediaInfo$Builder;
.super Ljava/lang/Object;
.source "MediaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/core/MediaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private allImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/connectsdk/core/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field private final mimeType:Ljava/lang/String;

.field private subtitleInfo:Lcom/connectsdk/core/SubtitleInfo;

.field private title:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/connectsdk/core/MediaInfo$Builder;->url:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/connectsdk/core/MediaInfo$Builder;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$100(Lcom/connectsdk/core/MediaInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/connectsdk/core/MediaInfo$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/connectsdk/core/MediaInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/connectsdk/core/MediaInfo$Builder;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/connectsdk/core/MediaInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/connectsdk/core/MediaInfo$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/connectsdk/core/MediaInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/connectsdk/core/MediaInfo$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/connectsdk/core/MediaInfo$Builder;)Lcom/connectsdk/core/SubtitleInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/connectsdk/core/MediaInfo$Builder;->subtitleInfo:Lcom/connectsdk/core/SubtitleInfo;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/connectsdk/core/MediaInfo$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/connectsdk/core/MediaInfo$Builder;->allImages:Ljava/util/List;

    return-object p0
.end method

.method private createImagesList()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/connectsdk/core/MediaInfo$Builder;->allImages:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/connectsdk/core/MediaInfo$Builder;->allImages:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/connectsdk/core/MediaInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/connectsdk/core/MediaInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/connectsdk/core/MediaInfo;-><init>(Lcom/connectsdk/core/MediaInfo$Builder;Lcom/connectsdk/core/MediaInfo$1;)V

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/connectsdk/core/MediaInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/core/MediaInfo$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public setIcon(Lcom/connectsdk/core/ImageInfo;)Lcom/connectsdk/core/MediaInfo$Builder;
    .locals 2

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/connectsdk/core/MediaInfo$Builder;->createImagesList()V

    .line 4
    iget-object v0, p0, Lcom/connectsdk/core/MediaInfo$Builder;->allImages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public setIcon(Ljava/lang/String;)Lcom/connectsdk/core/MediaInfo$Builder;
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Lcom/connectsdk/core/MediaInfo$Builder;->createImagesList()V

    .line 2
    iget-object v0, p0, Lcom/connectsdk/core/MediaInfo$Builder;->allImages:Ljava/util/List;

    const/4 v1, 0x0

    new-instance v2, Lcom/connectsdk/core/ImageInfo;

    invoke-direct {v2, p1}, Lcom/connectsdk/core/ImageInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public setSubtitleInfo(Lcom/connectsdk/core/SubtitleInfo;)Lcom/connectsdk/core/MediaInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/core/MediaInfo$Builder;->subtitleInfo:Lcom/connectsdk/core/SubtitleInfo;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/connectsdk/core/MediaInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/core/MediaInfo$Builder;->title:Ljava/lang/String;

    return-object p0
.end method
