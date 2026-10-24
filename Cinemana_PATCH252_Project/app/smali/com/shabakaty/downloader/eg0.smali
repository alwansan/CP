.class public abstract Lcom/shabakaty/downloader/eg0;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/eg0$b;,
        Lcom/shabakaty/downloader/eg0$a;,
        Lcom/shabakaty/downloader/eg0$e;,
        Lcom/shabakaty/downloader/eg0$c;,
        Lcom/shabakaty/downloader/eg0$d;
    }
.end annotation


# static fields
.field public static final a:Ljava/nio/charset/Charset;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/eg0;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Lcom/shabakaty/downloader/eg0$d;
.end method

.method public abstract f()I
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public abstract h()Lcom/shabakaty/downloader/eg0$e;
.end method

.method public abstract i()Lcom/shabakaty/downloader/eg0$b;
.end method

.method public j(JZLjava/lang/String;)Lcom/shabakaty/downloader/eg0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/eg0;->i()Lcom/shabakaty/downloader/eg0$b;

    move-result-object v0

    .line 2
    move-object v1, p0

    check-cast v1, Lcom/shabakaty/downloader/gg;

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/gg;->h:Lcom/shabakaty/downloader/eg0$e;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/eg0$e;->l()Lcom/shabakaty/downloader/eg0$e$b;

    move-result-object v1

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    move-object p2, v1

    check-cast p2, Lcom/shabakaty/downloader/mg$b;

    .line 6
    iput-object p1, p2, Lcom/shabakaty/downloader/mg$b;->d:Ljava/lang/Long;

    .line 7
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p2, Lcom/shabakaty/downloader/mg$b;->e:Ljava/lang/Boolean;

    if-eqz p4, :cond_0

    .line 8
    new-instance p1, Lcom/shabakaty/downloader/bh;

    const/4 p3, 0x0

    invoke-direct {p1, p4, p3}, Lcom/shabakaty/downloader/bh;-><init>(Ljava/lang/String;Lcom/shabakaty/downloader/bh$a;)V

    .line 9
    iput-object p1, p2, Lcom/shabakaty/downloader/mg$b;->g:Lcom/shabakaty/downloader/eg0$e$f;

    .line 10
    invoke-virtual {p2}, Lcom/shabakaty/downloader/mg$b;->a()Lcom/shabakaty/downloader/eg0$e;

    .line 11
    :cond_0
    invoke-virtual {v1}, Lcom/shabakaty/downloader/eg0$e$b;->a()Lcom/shabakaty/downloader/eg0$e;

    move-result-object p1

    .line 12
    move-object p2, v0

    check-cast p2, Lcom/shabakaty/downloader/gg$b;

    .line 13
    iput-object p1, p2, Lcom/shabakaty/downloader/gg$b;->g:Lcom/shabakaty/downloader/eg0$e;

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/eg0$b;->a()Lcom/shabakaty/downloader/eg0;

    move-result-object p1

    return-object p1
.end method
