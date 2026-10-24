.class public final enum Lcom/shabakaty/downloader/do4$b;
.super Lcom/shabakaty/downloader/do4;
.source "TokeniserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/do4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/shabakaty/downloader/do4;-><init>(Ljava/lang/String;ILcom/shabakaty/downloader/do4$k;)V

    return-void
.end method


# virtual methods
.method public D(Lcom/shabakaty/downloader/co4;Lcom/shabakaty/downloader/ez;)V
    .locals 4

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/ez;->o(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p1, Lcom/shabakaty/downloader/co4;->h:Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/shabakaty/downloader/zn4;->h(Ljava/lang/StringBuilder;)V

    .line 3
    sget-object p2, Lcom/shabakaty/downloader/do4;->C:Lcom/shabakaty/downloader/do4;

    .line 4
    iget-object v0, p1, Lcom/shabakaty/downloader/co4;->a:Lcom/shabakaty/downloader/ez;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ez;->a()V

    .line 5
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p1, Lcom/shabakaty/downloader/co4;->o:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "</"

    .line 8
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9
    iget-object v1, p1, Lcom/shabakaty/downloader/co4;->o:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p2, v2}, Lcom/shabakaty/downloader/ez;->r(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-gt v1, v2, :cond_2

    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/ez;->r(Ljava/lang/CharSequence;)I

    move-result v0

    if-le v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    .line 14
    invoke-virtual {p1, v3}, Lcom/shabakaty/downloader/co4;->c(Z)Lcom/shabakaty/downloader/zn4$i;

    move-result-object v0

    .line 15
    iget-object v1, p1, Lcom/shabakaty/downloader/co4;->o:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/zn4$i;->p(Ljava/lang/String;)Lcom/shabakaty/downloader/zn4$i;

    iput-object v0, p1, Lcom/shabakaty/downloader/co4;->i:Lcom/shabakaty/downloader/zn4$i;

    .line 17
    invoke-virtual {p1}, Lcom/shabakaty/downloader/co4;->g()V

    .line 18
    invoke-virtual {p2}, Lcom/shabakaty/downloader/ez;->t()V

    .line 19
    sget-object p2, Lcom/shabakaty/downloader/do4;->r:Lcom/shabakaty/downloader/do4;

    .line 20
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    goto :goto_2

    :cond_3
    const-string p2, "<"

    .line 21
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/co4;->f(Ljava/lang/String;)V

    .line 22
    sget-object p2, Lcom/shabakaty/downloader/do4;->t:Lcom/shabakaty/downloader/do4;

    .line 23
    iput-object p2, p1, Lcom/shabakaty/downloader/co4;->c:Lcom/shabakaty/downloader/do4;

    :goto_2
    return-void
.end method
