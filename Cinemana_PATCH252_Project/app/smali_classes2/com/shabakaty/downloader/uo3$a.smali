.class public final Lcom/shabakaty/downloader/uo3$a;
.super Ljava/lang/Object;
.source "ReflectJavaAnnotationOwner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/uo3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lcom/shabakaty/downloader/uo3;Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/ro3;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/uo3;->z()Ljava/lang/reflect/AnnotatedElement;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/md0;->p([Ljava/lang/annotation/Annotation;Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/ro3;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static b(Lcom/shabakaty/downloader/uo3;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/uo3;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ro3;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/uo3;->z()Ljava/lang/reflect/AnnotatedElement;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/shabakaty/downloader/md0;->r([Ljava/lang/annotation/Annotation;)Ljava/util/List;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static c(Lcom/shabakaty/downloader/uo3;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
