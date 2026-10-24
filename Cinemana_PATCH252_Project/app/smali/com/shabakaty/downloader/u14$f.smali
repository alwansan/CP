.class public final Lcom/shabakaty/downloader/u14$f;
.super Lcom/shabakaty/downloader/u14$a;
.source "SessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/u14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/u14$a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/u14$f;->g:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/u14$f;->h:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/u14;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/shabakaty/downloader/u14;->f:Lcom/shabakaty/downloader/pv;

    .line 2
    iget v1, v0, Lcom/shabakaty/downloader/pv;->c:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "ValidatingBuilder"

    if-eq v1, v2, :cond_1

    .line 3
    iget-boolean v2, p0, Lcom/shabakaty/downloader/u14$f;->h:Z

    if-nez v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    .line 5
    iput v1, v2, Lcom/shabakaty/downloader/pv$a;->c:I

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/shabakaty/downloader/u14$f;->h:Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    .line 8
    iget v2, v2, Lcom/shabakaty/downloader/pv$a;->c:I

    if-eq v2, v1, :cond_1

    const-string v1, "Invalid configuration due to template type: "

    .line 9
    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    .line 10
    iget v2, v2, Lcom/shabakaty/downloader/pv$a;->c:I

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget v2, v0, Lcom/shabakaty/downloader/pv;->c:I

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v5, v1, v4}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    iput-boolean v3, p0, Lcom/shabakaty/downloader/u14$f;->g:Z

    .line 16
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/shabakaty/downloader/u14;->f:Lcom/shabakaty/downloader/pv;

    .line 17
    iget-object v1, v1, Lcom/shabakaty/downloader/pv;->f:Lcom/shabakaty/downloader/lk4;

    .line 18
    iget-object v2, p0, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    .line 19
    iget-object v2, v2, Lcom/shabakaty/downloader/pv$a;->f:Lcom/shabakaty/downloader/ew2;

    .line 20
    iget-object v2, v2, Lcom/shabakaty/downloader/lk4;->a:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/shabakaty/downloader/lk4;->a:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 21
    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 22
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/u14$a;->c:Ljava/util/List;

    .line 23
    iget-object v2, p1, Lcom/shabakaty/downloader/u14;->b:Ljava/util/List;

    .line 24
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 25
    iget-object v1, p0, Lcom/shabakaty/downloader/u14$a;->d:Ljava/util/List;

    .line 26
    iget-object v2, p1, Lcom/shabakaty/downloader/u14;->c:Ljava/util/List;

    .line 27
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    iget-object v1, p0, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    .line 29
    iget-object v2, p1, Lcom/shabakaty/downloader/u14;->f:Lcom/shabakaty/downloader/pv;

    .line 30
    iget-object v2, v2, Lcom/shabakaty/downloader/pv;->d:Ljava/util/List;

    .line 31
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/pv$a;->a(Ljava/util/Collection;)V

    .line 32
    iget-object v1, p0, Lcom/shabakaty/downloader/u14$a;->f:Ljava/util/List;

    .line 33
    iget-object v2, p1, Lcom/shabakaty/downloader/u14;->d:Ljava/util/List;

    .line 34
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    iget-object v1, p0, Lcom/shabakaty/downloader/u14$a;->e:Ljava/util/List;

    .line 36
    iget-object v2, p1, Lcom/shabakaty/downloader/u14;->e:Ljava/util/List;

    .line 37
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    iget-object v1, p0, Lcom/shabakaty/downloader/u14$a;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/u14;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 39
    iget-object p1, p0, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    .line 40
    iget-object p1, p1, Lcom/shabakaty/downloader/pv$a;->a:Ljava/util/Set;

    .line 41
    invoke-virtual {v0}, Lcom/shabakaty/downloader/pv;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 42
    iget-object p1, p0, Lcom/shabakaty/downloader/u14$a;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    .line 43
    iget-object v1, v1, Lcom/shabakaty/downloader/pv$a;->a:Ljava/util/Set;

    .line 44
    invoke-interface {p1, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "Invalid configuration due to capture request surfaces are not a subset of surfaces"

    .line 45
    invoke-static {v5, p1, v4}, Lcom/shabakaty/downloader/vk2;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    iput-boolean v3, p0, Lcom/shabakaty/downloader/u14$f;->g:Z

    .line 47
    :cond_3
    iget-object p1, p0, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    .line 48
    iget-object v0, v0, Lcom/shabakaty/downloader/pv;->b:Lcom/shabakaty/downloader/o90;

    .line 49
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/pv$a;->c(Lcom/shabakaty/downloader/o90;)V

    return-void
.end method

.method public b()Lcom/shabakaty/downloader/u14;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/u14$f;->g:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/u14;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/shabakaty/downloader/u14$a;->a:Ljava/util/Set;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/shabakaty/downloader/u14$a;->c:Ljava/util/List;

    iget-object v4, p0, Lcom/shabakaty/downloader/u14$a;->d:Ljava/util/List;

    iget-object v5, p0, Lcom/shabakaty/downloader/u14$a;->f:Ljava/util/List;

    iget-object v6, p0, Lcom/shabakaty/downloader/u14$a;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/shabakaty/downloader/u14$a;->b:Lcom/shabakaty/downloader/pv$a;

    .line 3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/pv$a;->d()Lcom/shabakaty/downloader/pv;

    move-result-object v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/u14;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/shabakaty/downloader/pv;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported session configuration combination"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
