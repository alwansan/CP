.class public final Lcom/shabakaty/downloader/a83$a;
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
.field public static final r:Lcom/shabakaty/downloader/a83$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/a83$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/a83$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/a83$a;->r:Lcom/shabakaty/downloader/a83$a;

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
    invoke-interface {p1}, Lcom/shabakaty/downloader/rq;->i()Ljava/util/List;

    move-result-object p1

    const-string v0, "valueParameters"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/shabakaty/downloader/m50;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/sz4;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/hr0;->a(Lcom/shabakaty/downloader/sz4;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Lcom/shabakaty/downloader/sz4;->s0()Lcom/shabakaty/downloader/qe2;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    .line 4
    :cond_2
    :goto_1
    sget-object p1, Lcom/shabakaty/downloader/a83;->a:Lcom/shabakaty/downloader/a83;

    if-nez v0, :cond_3

    const-string p1, "last parameter should not have a default value or be a vararg"

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method
