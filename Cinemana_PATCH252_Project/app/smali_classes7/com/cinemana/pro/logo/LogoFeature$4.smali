.class Lcom/cinemana/pro/logo/LogoFeature$4;
.super Ljava/lang/Object;
.source "LogoFeature.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cinemana/pro/logo/LogoFeature;->attach(Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$imdb:Ljava/lang/String;

.field final synthetic val$language:Ljava/lang/String;

.field final synthetic val$ref:Ljava/lang/ref/WeakReference;

.field final synthetic val$requestIdentity:Ljava/lang/String;

.field final synthetic val$tmdb:Z

.field final synthetic val$tmdbKey:Ljava/lang/String;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 221
    iput-boolean p1, p0, Lcom/cinemana/pro/logo/LogoFeature$4;->val$tmdb:Z

    iput-object p2, p0, Lcom/cinemana/pro/logo/LogoFeature$4;->val$cacheKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/cinemana/pro/logo/LogoFeature$4;->val$imdb:Ljava/lang/String;

    iput-object p4, p0, Lcom/cinemana/pro/logo/LogoFeature$4;->val$type:Ljava/lang/String;

    iput-object p5, p0, Lcom/cinemana/pro/logo/LogoFeature$4;->val$language:Ljava/lang/String;

    iput-object p6, p0, Lcom/cinemana/pro/logo/LogoFeature$4;->val$tmdbKey:Ljava/lang/String;

    iput-object p7, p0, Lcom/cinemana/pro/logo/LogoFeature$4;->val$ref:Ljava/lang/ref/WeakReference;

    iput-object p8, p0, Lcom/cinemana/pro/logo/LogoFeature$4;->val$requestIdentity:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 222
    const-string v0, ".missing"

    const-string v1, "missing"

    .line 223
    iget-boolean v2, p0, Lcom/cinemana/pro/logo/LogoFeature$4;->val$tmdb:Z

    const-string v3, "cinemeta"

    const-string v4, "tmdb"

    if-eqz v2, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 224
    :goto_0
    iget-boolean v5, p0, Lcom/cinemana/pro/logo/LogoFeature$4;->val$tmdb:Z

    const-string v6, "lookup_started"

    const-string v7, ""

    if-eqz v5, :cond_6

    .line 226
    :try_start_0
    invoke-static {v4, v6}, Lcom/cinemana/pro/logo/LogoFeature;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v5, p0, Lcom/cinemana/pro/logo/LogoFeature$4;->val$cacheKey:Ljava/lang/String;

    const-wide/32 v8, 0x240c8400

    invoke-static {v5, v8, v9}, Lcom/cinemana/pro/logo/LogoFeature;->access$200(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 228
    :try_start_1
    invoke-static {v5}, Lcom/cinemana/pro/logo/LogoFeature;->access$1000(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 231
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/cinemana/pro/logo/LogoFeature$4;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-wide/32 v9, 0x1499700

    invoke-static {v8, v9, v10}, Lcom/cinemana/pro/logo/LogoFeature;->access$200(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 232
    if-eqz v8, :cond_1

    .line 233
    const-string v0, "no_logo_cached"

    invoke-static {v4, v0}, Lcom/cinemana/pro/logo/LogoFeature;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 235
    :cond_1
    iget-object v8, p0, Lcom/cinemana/pro/logo/LogoFeature$4;->val$imdb:Ljava/lang/String;

    iget-object v9, p0, Lcom/cinemana/pro/logo/LogoFeature$4;->val$type:Ljava/lang/String;

    iget-object v10, p0, Lcom/cinemana/pro/logo/LogoFeature$4;->val$language:Ljava/lang/String;

    iget-object v11, p0, Lcom/cinemana/pro/logo/LogoFeature$4;->val$tmdbKey:Ljava/lang/String;

    invoke-static {v8, v9, v10, v11}, Lcom/cinemana/pro/logo/TmdbLogo;->resolveLogo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 236
    invoke-static {}, Lcom/cinemana/pro/logo/TmdbLogo;->status()Ljava/lang/String;

    move-result-object v8

    .line 237
    invoke-static {v4, v8}, Lcom/cinemana/pro/logo/LogoFeature;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {v5}, Lcom/cinemana/pro/logo/LogoFeature;->access$1000(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v0, p0, Lcom/cinemana/pro/logo/LogoFeature$4;->val$cacheKey:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/cinemana/pro/logo/LogoFeature;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 239
    :cond_2
    const-string v9, "imdb_not_found"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "no_supported_logo"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 240
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/cinemana/pro/logo/LogoFeature$4;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/cinemana/pro/logo/LogoFeature;->access$300(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 242
    :cond_4
    const-string v0, "cache_hit"

    invoke-static {v4, v0}, Lcom/cinemana/pro/logo/LogoFeature;->access$900(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_1
    nop

    .line 245
    goto :goto_3

    .line 243
    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v5, v7

    .line 244
    :goto_2
    invoke-static {v0}, Lcom/cinemana/pro/logo/LogoFeature;->access$1100(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/cinemana/pro/logo/LogoFeature;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 224
    :cond_6
    move-object v5, v7

    .line 249
    :goto_3
    invoke-static {v5}, Lcom/cinemana/pro/logo/LogoFeature;->access$1000(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 250
    nop

    .line 251
    iget-boolean v0, p0, Lcom/cinemana/pro/logo/LogoFeature$4;->val$tmdb:Z

    if-eqz v0, :cond_7

    const-string v0, "missing_logo_fallback_cinemeta"

    invoke-static {v4, v0}, Lcom/cinemana/pro/logo/LogoFeature;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_7
    nop

    .line 254
    :try_start_2
    invoke-static {v3, v6}, Lcom/cinemana/pro/logo/LogoFeature;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/cinemana/pro/logo/LogoFeature$4;->val$type:Ljava/lang/String;

    iget-object v1, p0, Lcom/cinemana/pro/logo/LogoFeature$4;->val$imdb:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cinemana/pro/logo/LogoFeature;->access$1200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 258
    goto :goto_4

    .line 256
    :catchall_2
    move-exception v0

    .line 257
    invoke-static {v0}, Lcom/cinemana/pro/logo/LogoFeature;->access$1100(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/cinemana/pro/logo/LogoFeature;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v7

    goto :goto_4

    .line 249
    :cond_8
    move-object v3, v2

    .line 260
    :goto_4
    invoke-static {v5}, Lcom/cinemana/pro/logo/LogoFeature;->access$1000(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    move-object v7, v5

    .line 261
    :goto_5
    nop

    .line 262
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "no_logo_to_draw"

    invoke-static {v3, v0}, Lcom/cinemana/pro/logo/LogoFeature;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 263
    :cond_a
    const-string v0, "logo_ready"

    invoke-static {v3, v0}, Lcom/cinemana/pro/logo/LogoFeature;->access$900(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    nop

    .line 265
    iget-object v0, p0, Lcom/cinemana/pro/logo/LogoFeature$4;->val$ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 266
    :cond_b
    :try_start_3
    const-string v1, "post"

    new-instance v2, Lcom/cinemana/pro/logo/LogoFeature$4$1;

    invoke-direct {v2, p0, v7, v3}, Lcom/cinemana/pro/logo/LogoFeature$4$1;-><init>(Lcom/cinemana/pro/logo/LogoFeature$4;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Lcom/cinemana/pro/logo/LogoFeature;->access$800(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .line 270
    :catch_0
    move-exception v0

    :goto_6
    nop

    .line 271
    return-void
.end method
