.class public final Lcom/shabakaty/downloader/wp3;
.super Lcom/shabakaty/downloader/kp3;
.source "ReflectJavaValueParameter.kt"

# interfaces
.implements Lcom/shabakaty/downloader/t82;


# instance fields
.field public final a:Lcom/shabakaty/downloader/up3;

.field public final b:[Ljava/lang/annotation/Annotation;

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/up3;[Ljava/lang/annotation/Annotation;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "reflectAnnotations"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/kp3;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/wp3;->a:Lcom/shabakaty/downloader/up3;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/wp3;->b:[Ljava/lang/annotation/Annotation;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/wp3;->c:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lcom/shabakaty/downloader/wp3;->d:Z

    return-void
.end method


# virtual methods
.method public b()Lcom/shabakaty/downloader/g82;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wp3;->a:Lcom/shabakaty/downloader/up3;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/wp3;->d:Z

    return v0
.end method

.method public getName()Lcom/shabakaty/downloader/hw2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wp3;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/shabakaty/downloader/hw2;->n(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/g62;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wp3;->b:[Ljava/lang/annotation/Annotation;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/md0;->p([Ljava/lang/annotation/Annotation;Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/ro3;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/shabakaty/downloader/wp3;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-boolean v2, p0, Lcom/shabakaty/downloader/wp3;->d:Z

    if-eqz v2, :cond_0

    const-string v2, "vararg "

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 3
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/wp3;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/shabakaty/downloader/hw2;->n(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v2

    .line 5
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/wp3;->a:Lcom/shabakaty/downloader/up3;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wp3;->b:[Ljava/lang/annotation/Annotation;

    invoke-static {v0}, Lcom/shabakaty/downloader/md0;->r([Ljava/lang/annotation/Annotation;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
