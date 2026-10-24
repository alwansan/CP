.class public Lcom/facebook/imagepipeline/request/ImageRequest;
.super Ljava/lang/Object;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;,
        Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;
    }
.end annotation


# static fields
.field public static final t:Lcom/facebook/common/internal/Fn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/common/internal/Fn<",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

.field public final b:Landroid/net/Uri;

.field public final c:I

.field public d:Ljava/io/File;

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

.field public final i:Lcom/facebook/imagepipeline/common/RotationOptions;

.field public final j:Lcom/facebook/imagepipeline/common/BytesRange;

.field public final k:Lcom/facebook/imagepipeline/common/Priority;

.field public final l:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

.field public final m:I

.field public final n:Z

.field public final o:Z

.field public final p:Ljava/lang/Boolean;

.field public final q:Lcom/facebook/imagepipeline/request/Postprocessor;

.field public final r:Lcom/facebook/imagepipeline/listener/RequestListener;

.field public final s:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/imagepipeline/request/ImageRequest$1;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/request/ImageRequest$1;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/request/ImageRequest;->t:Lcom/facebook/common/internal/Fn;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/imagepipeline/request/ImageRequestBuilder;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->f:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 3
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 4
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    .line 5
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Landroid/net/Uri;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->e(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    goto/16 :goto_5

    .line 7
    :cond_1
    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->d(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 8
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/facebook/common/media/MediaUtils;->a:Ljava/util/Map;

    const/16 v4, 0x2e

    .line 9
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, 0x0

    if-ltz v4, :cond_3

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    if-ne v4, v6, :cond_2

    goto :goto_0

    :cond_2
    add-int/2addr v4, v1

    .line 11
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    move-object v0, v5

    :goto_1
    if-nez v0, :cond_4

    goto :goto_3

    .line 12
    :cond_4
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 13
    sget-object v3, Lcom/facebook/common/media/MimeTypeMapWrapper;->c:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    goto :goto_2

    .line 14
    :cond_5
    sget-object v3, Lcom/facebook/common/media/MimeTypeMapWrapper;->a:Landroid/webkit/MimeTypeMap;

    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v5, v3

    if-nez v5, :cond_6

    .line 15
    sget-object v3, Lcom/facebook/common/media/MediaUtils;->a:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    :cond_6
    :goto_3
    if-eqz v5, :cond_7

    const-string v0, "video/"

    .line 16
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_8

    const/4 v3, 0x2

    goto :goto_5

    :cond_8
    const/4 v3, 0x3

    goto :goto_5

    .line 17
    :cond_9
    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->c(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v3, 0x4

    goto :goto_5

    .line 18
    :cond_a
    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "asset"

    .line 19
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v3, 0x5

    goto :goto_5

    .line 20
    :cond_b
    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "res"

    .line 21
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v3, 0x6

    goto :goto_5

    .line 22
    :cond_c
    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/4 v3, 0x7

    goto :goto_5

    .line 23
    :cond_d
    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "android.resource"

    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v3, 0x8

    .line 25
    :cond_e
    :goto_5
    iput v3, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->c:I

    .line 26
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->g:Z

    .line 27
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->e:Z

    .line 28
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->h:Z

    .line 29
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Z

    .line 30
    iget-boolean v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->i:Z

    .line 31
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    .line 32
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->e:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 33
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 34
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->d:Lcom/facebook/imagepipeline/common/RotationOptions;

    if-nez v0, :cond_f

    .line 35
    sget-object v0, Lcom/facebook/imagepipeline/common/RotationOptions;->c:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 36
    :cond_f
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 37
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->n:Lcom/facebook/imagepipeline/common/BytesRange;

    .line 38
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/common/BytesRange;

    .line 39
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->j:Lcom/facebook/imagepipeline/common/Priority;

    .line 40
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Lcom/facebook/imagepipeline/common/Priority;

    .line 41
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->b:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 42
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 43
    iget v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->c:I

    .line 44
    iput v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->m:I

    and-int/lit8 v0, v0, 0x30

    if-nez v0, :cond_10

    .line 45
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/facebook/common/util/UriUtil;->e(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_6

    :cond_10
    const/4 v0, 0x0

    .line 46
    :goto_6
    iput-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Z

    .line 47
    iget v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->c:I

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_11

    goto :goto_7

    :cond_11
    const/4 v1, 0x0

    .line 48
    :goto_7
    iput-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->o:Z

    .line 49
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->l:Ljava/lang/Boolean;

    .line 50
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->p:Ljava/lang/Boolean;

    .line 51
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->k:Lcom/facebook/imagepipeline/request/Postprocessor;

    .line 52
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Lcom/facebook/imagepipeline/request/Postprocessor;

    .line 53
    iget-object v0, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->m:Lcom/facebook/imagepipeline/listener/RequestListener;

    .line 54
    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->r:Lcom/facebook/imagepipeline/listener/RequestListener;

    .line 55
    iget p1, p1, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->o:I

    .line 56
    iput p1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->s:I

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/io/File;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Ljava/io/File;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Ljava/io/File;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->m:I

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/facebook/imagepipeline/request/ImageRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 3
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Z

    iget-boolean v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Z

    if-eq v0, v2, :cond_1

    return v1

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Z

    iget-boolean v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Z

    if-eq v0, v2, :cond_2

    return v1

    .line 5
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->o:Z

    iget-boolean v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->o:Z

    if-eq v0, v2, :cond_3

    return v1

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Landroid/net/Uri;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->a:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    .line 7
    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Ljava/io/File;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->d:Ljava/io/File;

    .line 8
    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/common/BytesRange;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/common/BytesRange;

    .line 9
    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    iget-object v2, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 10
    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 11
    invoke-static {v0, v0}, Lcom/facebook/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Lcom/facebook/imagepipeline/common/Priority;

    iget-object v3, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Lcom/facebook/imagepipeline/common/Priority;

    .line 12
    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    iget-object v3, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    .line 13
    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->m:I

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->p:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->p:Ljava/lang/Boolean;

    .line 15
    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 16
    invoke-static {v0, v0}, Lcom/facebook/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/RotationOptions;

    iget-object v3, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 17
    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    iget-boolean v3, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    if-eq v2, v3, :cond_4

    goto :goto_1

    .line 18
    :cond_4
    iget-object v2, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Lcom/facebook/imagepipeline/request/Postprocessor;

    if-eqz v2, :cond_5

    .line 19
    invoke-interface {v2}, Lcom/facebook/imagepipeline/request/Postprocessor;->c()Lcom/facebook/cache/common/CacheKey;

    move-result-object v2

    goto :goto_0

    :cond_5
    move-object v2, v0

    .line 20
    :goto_0
    iget-object v3, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Lcom/facebook/imagepipeline/request/Postprocessor;

    if-eqz v3, :cond_6

    .line 21
    invoke-interface {v3}, Lcom/facebook/imagepipeline/request/Postprocessor;->c()Lcom/facebook/cache/common/CacheKey;

    move-result-object v0

    .line 22
    :cond_6
    invoke-static {v2, v0}, Lcom/facebook/common/internal/Objects;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    .line 23
    :cond_7
    iget v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->s:I

    iget p1, p1, Lcom/facebook/imagepipeline/request/ImageRequest;->s:I

    if-ne v0, p1, :cond_8

    const/4 v1, 0x1

    :cond_8
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Lcom/facebook/imagepipeline/request/Postprocessor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/facebook/imagepipeline/request/Postprocessor;->c()Lcom/facebook/cache/common/CacheKey;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/16 v2, 0x11

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3
    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Landroid/net/Uri;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Z

    .line 4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/common/BytesRange;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Lcom/facebook/imagepipeline/common/Priority;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->m:I

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Z

    .line 6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-boolean v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->o:Z

    .line 7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->p:Ljava/lang/Boolean;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    aput-object v1, v2, v3

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/RotationOptions;

    aput-object v4, v2, v3

    const/16 v3, 0xd

    aput-object v0, v2, v3

    const/16 v0, 0xe

    aput-object v1, v2, v0

    const/16 v0, 0xf

    iget v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->s:I

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const/16 v0, 0x10

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v0

    .line 10
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/Objects;->b(Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->b:Landroid/net/Uri;

    const-string v2, "uri"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    .line 3
    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->a:Lcom/facebook/imagepipeline/request/ImageRequest$CacheChoice;

    const-string v2, "cacheChoice"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    .line 5
    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->h:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    const-string v2, "decodeOptions"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    .line 7
    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->q:Lcom/facebook/imagepipeline/request/Postprocessor;

    const-string v2, "postprocessor"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    .line 9
    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->k:Lcom/facebook/imagepipeline/common/Priority;

    const-string v2, "priority"

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    const-string v1, "resizeOptions"

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    .line 12
    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->i:Lcom/facebook/imagepipeline/common/RotationOptions;

    const-string v3, "rotationOptions"

    .line 13
    invoke-virtual {v0, v3, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    .line 14
    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->j:Lcom/facebook/imagepipeline/common/BytesRange;

    const-string v3, "bytesRange"

    .line 15
    invoke-virtual {v0, v3, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    const-string v1, "resizingAllowedOverride"

    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    .line 17
    iget-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->e:Z

    const-string v2, "progressiveRenderingEnabled"

    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->b(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->f:Z

    const-string v2, "localThumbnailPreviewsEnabled"

    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->b(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->g:Z

    const-string v2, "loadThumbnailOnly"

    .line 20
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->b(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->l:Lcom/facebook/imagepipeline/request/ImageRequest$RequestLevel;

    const-string v2, "lowestPermittedRequestLevel"

    .line 21
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    .line 22
    iget v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->m:I

    const-string v2, "cachesDisabled"

    .line 23
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->n:Z

    const-string v2, "isDiskCacheEnabled"

    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->b(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    iget-boolean v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->o:Z

    const-string v2, "isMemoryCacheEnabled"

    .line 25
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->b(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    iget-object v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->p:Ljava/lang/Boolean;

    const-string v2, "decodePrefetches"

    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    .line 27
    iget v1, p0, Lcom/facebook/imagepipeline/request/ImageRequest;->s:I

    const-string v2, "delayMs"

    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->a(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    .line 29
    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
