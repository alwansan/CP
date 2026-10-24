.class public final Lcom/shabakaty/downloader/qp3$a;
.super Ljava/lang/Object;
.source "ReflectJavaModifierListOwner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/qp3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lcom/shabakaty/downloader/qp3;)Lcom/shabakaty/downloader/y45;
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/shabakaty/downloader/qp3;->H()I

    move-result p0

    .line 2
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/shabakaty/downloader/v45$h;->c:Lcom/shabakaty/downloader/v45$h;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/shabakaty/downloader/v45$e;->c:Lcom/shabakaty/downloader/v45$e;

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/shabakaty/downloader/x82;->c:Lcom/shabakaty/downloader/x82;

    goto :goto_0

    .line 6
    :cond_2
    sget-object p0, Lcom/shabakaty/downloader/w82;->c:Lcom/shabakaty/downloader/w82;

    goto :goto_0

    .line 7
    :cond_3
    sget-object p0, Lcom/shabakaty/downloader/v82;->c:Lcom/shabakaty/downloader/v82;

    :goto_0
    return-object p0
.end method
