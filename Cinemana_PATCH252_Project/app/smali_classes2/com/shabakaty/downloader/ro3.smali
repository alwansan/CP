.class public final Lcom/shabakaty/downloader/ro3;
.super Lcom/shabakaty/downloader/kp3;
.source "ReflectJavaAnnotation.kt"

# interfaces
.implements Lcom/shabakaty/downloader/g62;


# instance fields
.field public final a:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Ljava/lang/annotation/Annotation;)V
    .locals 1

    const-string v0, "annotation"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/kp3;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ro3;->a:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public C()Lcom/shabakaty/downloader/q62;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fp3;

    iget-object v1, p0, Lcom/shabakaty/downloader/ro3;->a:Ljava/lang/annotation/Annotation;

    invoke-static {v1}, Lcom/shabakaty/downloader/md0;->q(Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/gc2;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/md0;->s(Lcom/shabakaty/downloader/gc2;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/fp3;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public L()Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/h62;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ro3;->a:Ljava/lang/annotation/Annotation;

    invoke-static {v0}, Lcom/shabakaty/downloader/md0;->q(Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/gc2;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/md0;->s(Lcom/shabakaty/downloader/gc2;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "annotation.annotationClass.java.declaredMethods"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    .line 4
    iget-object v6, p0, Lcom/shabakaty/downloader/ro3;->a:Ljava/lang/annotation/Annotation;

    new-array v7, v3, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "method.invoke(annotation)"

    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/shabakaty/downloader/hw2;->u(Ljava/lang/String;)Lcom/shabakaty/downloader/hw2;

    move-result-object v5

    .line 6
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    sget-object v8, Lcom/shabakaty/downloader/qo3;->a:Ljava/util/List;

    .line 7
    const-class v8, Ljava/lang/Enum;

    .line 8
    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 9
    new-instance v7, Lcom/shabakaty/downloader/lp3;

    check-cast v6, Ljava/lang/Enum;

    invoke-direct {v7, v5, v6}, Lcom/shabakaty/downloader/lp3;-><init>(Lcom/shabakaty/downloader/hw2;Ljava/lang/Enum;)V

    goto :goto_1

    .line 10
    :cond_0
    instance-of v7, v6, Ljava/lang/annotation/Annotation;

    if-eqz v7, :cond_1

    new-instance v7, Lcom/shabakaty/downloader/to3;

    check-cast v6, Ljava/lang/annotation/Annotation;

    invoke-direct {v7, v5, v6}, Lcom/shabakaty/downloader/to3;-><init>(Lcom/shabakaty/downloader/hw2;Ljava/lang/annotation/Annotation;)V

    goto :goto_1

    .line 11
    :cond_1
    instance-of v7, v6, [Ljava/lang/Object;

    if-eqz v7, :cond_2

    new-instance v7, Lcom/shabakaty/downloader/vo3;

    check-cast v6, [Ljava/lang/Object;

    invoke-direct {v7, v5, v6}, Lcom/shabakaty/downloader/vo3;-><init>(Lcom/shabakaty/downloader/hw2;[Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_2
    instance-of v7, v6, Ljava/lang/Class;

    if-eqz v7, :cond_3

    new-instance v7, Lcom/shabakaty/downloader/hp3;

    check-cast v6, Ljava/lang/Class;

    invoke-direct {v7, v5, v6}, Lcom/shabakaty/downloader/hp3;-><init>(Lcom/shabakaty/downloader/hw2;Ljava/lang/Class;)V

    goto :goto_1

    .line 13
    :cond_3
    new-instance v7, Lcom/shabakaty/downloader/np3;

    invoke-direct {v7, v5, v6}, Lcom/shabakaty/downloader/np3;-><init>(Lcom/shabakaty/downloader/hw2;Ljava/lang/Object;)V

    .line 14
    :goto_1
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/shabakaty/downloader/ro3;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/ro3;->a:Ljava/lang/annotation/Annotation;

    check-cast p1, Lcom/shabakaty/downloader/ro3;

    iget-object p1, p1, Lcom/shabakaty/downloader/ro3;->a:Ljava/lang/annotation/Annotation;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()Lcom/shabakaty/downloader/v20;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ro3;->a:Ljava/lang/annotation/Annotation;

    invoke-static {v0}, Lcom/shabakaty/downloader/md0;->q(Ljava/lang/annotation/Annotation;)Lcom/shabakaty/downloader/gc2;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/md0;->s(Lcom/shabakaty/downloader/gc2;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/qo3;->a(Ljava/lang/Class;)Lcom/shabakaty/downloader/v20;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ro3;->a:Ljava/lang/annotation/Annotation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/shabakaty/downloader/ro3;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/ro3;->a:Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()Z
    .locals 1

    const-string v0, "this"

    .line 1
    invoke-static {p0, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method
