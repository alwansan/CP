.class public final Lcom/shabakaty/downloader/oc2$d;
.super Lcom/shabakaty/downloader/ng0;
.source "KDeclarationContainerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/oc2;->h(Lcom/shabakaty/downloader/mr2;Lcom/shabakaty/downloader/oc2$c;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/oc2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/ng0;-><init>(Lcom/shabakaty/downloader/oc2;)V

    return-void
.end method


# virtual methods
.method public j(Lcom/shabakaty/downloader/vc0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Lcom/shabakaty/downloader/qv4;

    const-string v0, "data"

    .line 2
    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "No constructors should appear here: "

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
