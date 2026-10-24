.class public final Lcom/shabakaty/downloader/r21;
.super Lcom/shabakaty/downloader/oc2;
.source "EmptyContainerForLocal.kt"


# static fields
.field public static final t:Lcom/shabakaty/downloader/r21;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/r21;

    invoke-direct {v0}, Lcom/shabakaty/downloader/r21;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/r21;->t:Lcom/shabakaty/downloader/r21;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/oc2;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r21;->r()Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0
.end method

.method public e()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/vc0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r21;->r()Ljava/lang/Void;

    const/4 v0, 0x0

    throw v0
.end method

.method public f(Lcom/shabakaty/downloader/hw2;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/xn1;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r21;->r()Ljava/lang/Void;

    const/4 p1, 0x0

    throw p1
.end method

.method public g(I)Lcom/shabakaty/downloader/yh3;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public j(Lcom/shabakaty/downloader/hw2;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/hw2;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/yh3;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r21;->r()Ljava/lang/Void;

    const/4 p1, 0x0

    throw p1
.end method

.method public final r()Ljava/lang/Void;
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/me2;

    const-string v1, "Introspecting local functions, lambdas, anonymous functions, local variables and typealiases is not yet fully supported in Kotlin reflection"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/me2;-><init>(Ljava/lang/String;)V

    throw v0
.end method
