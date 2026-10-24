.class public final Lcom/shabakaty/downloader/ym3$a;
.super Lcom/shabakaty/downloader/af2;
.source "RawType.kt"

# interfaces
.implements Lcom/shabakaty/downloader/tm1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/ym3;->h(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/x93;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/af2;",
        "Lcom/shabakaty/downloader/tm1<",
        "Lcom/shabakaty/downloader/ve2;",
        "Lcom/shabakaty/downloader/b74;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/q20;

.field public final synthetic s:Lcom/shabakaty/downloader/ym3;

.field public final synthetic t:Lcom/shabakaty/downloader/b74;

.field public final synthetic u:Lcom/shabakaty/downloader/i82;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/ym3;Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/i82;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/ym3$a;->r:Lcom/shabakaty/downloader/q20;

    iput-object p2, p0, Lcom/shabakaty/downloader/ym3$a;->s:Lcom/shabakaty/downloader/ym3;

    iput-object p3, p0, Lcom/shabakaty/downloader/ym3$a;->t:Lcom/shabakaty/downloader/b74;

    iput-object p4, p0, Lcom/shabakaty/downloader/ym3$a;->u:Lcom/shabakaty/downloader/i82;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/af2;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/ve2;

    const-string v0, "kotlinTypeRefiner"

    .line 2
    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ym3$a;->r:Lcom/shabakaty/downloader/q20;

    instance-of v1, v0, Lcom/shabakaty/downloader/q20;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lcom/shabakaty/downloader/hr0;->f(Lcom/shabakaty/downloader/g30;)Lcom/shabakaty/downloader/v20;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ve2;->b(Lcom/shabakaty/downloader/v20;)Lcom/shabakaty/downloader/q20;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/shabakaty/downloader/ym3$a;->r:Lcom/shabakaty/downloader/q20;

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/ym3$a;->s:Lcom/shabakaty/downloader/ym3;

    iget-object v1, p0, Lcom/shabakaty/downloader/ym3$a;->t:Lcom/shabakaty/downloader/b74;

    iget-object v2, p0, Lcom/shabakaty/downloader/ym3$a;->u:Lcom/shabakaty/downloader/i82;

    .line 7
    invoke-virtual {v0, v1, p1, v2}, Lcom/shabakaty/downloader/ym3;->h(Lcom/shabakaty/downloader/b74;Lcom/shabakaty/downloader/q20;Lcom/shabakaty/downloader/i82;)Lcom/shabakaty/downloader/x93;

    move-result-object p1

    .line 8
    iget-object p1, p1, Lcom/shabakaty/downloader/x93;->r:Ljava/lang/Object;

    .line 9
    move-object v2, p1

    check-cast v2, Lcom/shabakaty/downloader/b74;

    :goto_2
    return-object v2
.end method
