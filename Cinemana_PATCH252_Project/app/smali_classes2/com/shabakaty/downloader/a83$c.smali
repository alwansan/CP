.class public final Lcom/shabakaty/downloader/a83$c;
.super Lcom/shabakaty/downloader/af2;
.source "modifierChecks.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/a83;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/xn1;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/a83$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/a83$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/a83$c;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/a83$c;->r:Lcom/shabakaty/downloader/a83$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xn1;

    const-string v0, "$this$$receiver"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->o0()Lcom/shabakaty/downloader/ao3;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->u0()Lcom/shabakaty/downloader/ao3;

    move-result-object v0

    .line 4
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/a83;->a:Lcom/shabakaty/downloader/a83;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->h()Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/shabakaty/downloader/mz4;->b()Lcom/shabakaty/downloader/qe2;

    move-result-object v0

    const-string v2, "receiver.type"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "<this>"

    .line 5
    invoke-static {p1, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "superType"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v2, Lcom/shabakaty/downloader/re2;->a:Lcom/shabakaty/downloader/re2;

    check-cast v2, Lcom/shabakaty/downloader/fz2;

    invoke-virtual {v2, p1, v0}, Lcom/shabakaty/downloader/fz2;->e(Lcom/shabakaty/downloader/qe2;Lcom/shabakaty/downloader/qe2;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    const-string p1, "receiver must be a supertype of the return type"

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
