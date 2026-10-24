.class public final Lcom/shabakaty/downloader/py3$a;
.super Ljava/lang/Object;
.source "ScopesHolderForClass.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/py3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/ve2;Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/py3;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/shabakaty/downloader/mr2;",
            ">(",
            "Lcom/shabakaty/downloader/q20;",
            "Lcom/shabakaty/downloader/md4;",
            "Lcom/shabakaty/downloader/ve2;",
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/ve2;",
            "+TT;>;)",
            "Lcom/shabakaty/downloader/py3<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "storageManager"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeRefinerForOwnerModule"

    invoke-static {p3, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/py3;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/shabakaty/downloader/py3;-><init>(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/md4;Lcom/shabakaty/downloader/tm1;Lcom/shabakaty/downloader/ve2;Lcom/shabakaty/downloader/nn0;)V

    return-object v0
.end method
