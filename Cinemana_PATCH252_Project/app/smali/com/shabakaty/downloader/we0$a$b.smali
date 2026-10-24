.class public final Lcom/shabakaty/downloader/we0$a$b;
.super Lcom/shabakaty/downloader/v32$c;
.source "CoroutinesRoom.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/we0$a;->t(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/shabakaty/downloader/py;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/we0$a;Lcom/shabakaty/downloader/py;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/py;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/shabakaty/downloader/we0$a$b;->b:Lcom/shabakaty/downloader/py;

    invoke-direct {p0, p3}, Lcom/shabakaty/downloader/v32$c;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tables"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/we0$a$b;->b:Lcom/shabakaty/downloader/py;

    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/h04;->f(Ljava/lang/Object;)Z

    return-void
.end method
