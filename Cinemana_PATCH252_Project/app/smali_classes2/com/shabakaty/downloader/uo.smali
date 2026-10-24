.class public final Lcom/shabakaty/downloader/uo;
.super Lcom/shabakaty/downloader/af2;
.source "specialBuiltinMembers.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/tq;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final r:Lcom/shabakaty/downloader/uo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shabakaty/downloader/uo;

    invoke-direct {v0}, Lcom/shabakaty/downloader/uo;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/uo;->r:Lcom/shabakaty/downloader/uo;

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
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/tq;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p1, Lcom/shabakaty/downloader/xn1;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shabakaty/downloader/to;->m:Lcom/shabakaty/downloader/to;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/z94;->g:Ljava/util/Set;

    .line 5
    invoke-static {p1}, Lcom/shabakaty/downloader/vd5;->e(Lcom/shabakaty/downloader/rq;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/m50;->T(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
