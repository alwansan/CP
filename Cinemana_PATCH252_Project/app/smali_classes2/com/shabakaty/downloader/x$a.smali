.class public final Lcom/shabakaty/downloader/x$a;
.super Lcom/shabakaty/downloader/af2;
.source "AbstractDeserializedPackageFragmentProvider.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/x;-><init>(Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/ke2;Lcom/shabakaty/downloader/nu2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/fi1;",
        "Lcom/shabakaty/downloader/k93;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/x;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/x;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/x$a;->r:Lcom/shabakaty/downloader/x;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/fi1;

    const-string v0, "fqName"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/x$a;->r:Lcom/shabakaty/downloader/x;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/x;->d(Lcom/shabakaty/downloader/fi1;)Lcom/shabakaty/downloader/es0;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/x$a;->r:Lcom/shabakaty/downloader/x;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/x;->d:Lcom/shabakaty/downloader/or0;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/es0;->T0(Lcom/shabakaty/downloader/or0;)V

    :goto_0
    return-object p1

    :cond_1
    const-string p1, "components"

    .line 6
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v0
.end method
