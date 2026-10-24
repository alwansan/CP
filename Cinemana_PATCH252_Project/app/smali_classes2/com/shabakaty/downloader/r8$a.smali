.class public final Lcom/shabakaty/downloader/r8$a;
.super Ljava/lang/Object;
.source "AnnotationDescriptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/r8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lcom/shabakaty/downloader/r8;)Lcom/shabakaty/downloader/fi1;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->d(Lcom/shabakaty/downloader/r8;)Lcom/shabakaty/downloader/q20;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/shabakaty/downloader/d51;->i(Lcom/shabakaty/downloader/qm0;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcom/shabakaty/downloader/hr0;->c(Lcom/shabakaty/downloader/qm0;)Lcom/shabakaty/downloader/fi1;

    move-result-object v0

    :goto_1
    return-object v0
.end method
