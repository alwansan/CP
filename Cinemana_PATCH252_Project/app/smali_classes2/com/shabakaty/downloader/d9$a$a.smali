.class public final Lcom/shabakaty/downloader/d9$a$a;
.super Ljava/lang/Object;
.source "Annotations.kt"

# interfaces
.implements Lcom/shabakaty/downloader/d9;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/d9$a;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/shabakaty/downloader/r8;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/v21;->r:Lcom/shabakaty/downloader/v21;

    return-object v0
.end method

.method public m1(Lcom/shabakaty/downloader/fi1;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/d9$b;->b(Lcom/shabakaty/downloader/d9;Lcom/shabakaty/downloader/fi1;)Z

    move-result p1

    return p1
.end method

.method public r(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/r8;
    .locals 1

    const-string v0, "fqName"

    .line 1
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EMPTY"

    return-object v0
.end method
