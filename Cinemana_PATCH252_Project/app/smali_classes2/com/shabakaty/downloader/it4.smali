.class public final Lcom/shabakaty/downloader/it4;
.super Ljava/lang/Object;
.source "methodSignatureMapping.kt"

# interfaces
.implements Lcom/shabakaty/downloader/ht4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/ht4<",
        "Lcom/shabakaty/downloader/wb2;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/shabakaty/downloader/it4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/it4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/it4;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/it4;->a:Lcom/shabakaty/downloader/it4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/q20;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/shabakaty/downloader/qe2;)Lcom/shabakaty/downloader/qe2;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lcom/shabakaty/downloader/q20;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/util/Collection;)Lcom/shabakaty/downloader/qe2;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/shabakaty/downloader/qe2;",
            ">;)",
            "Lcom/shabakaty/downloader/qe2;"
        }
    .end annotation

    const-string v0, "types"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/AssertionError;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3f

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Lcom/shabakaty/downloader/m50;->g0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lcom/shabakaty/downloader/tm1;I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "There should be no intersection type in existing descriptors, but found: "

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public e(Lcom/shabakaty/downloader/q20;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public f(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/q20;)V
    .locals 0

    return-void
.end method
