.class public final Lcom/shabakaty/downloader/a90;
.super Ljava/lang/Object;
.source "Composer.kt"

# interfaces
.implements Lcom/shabakaty/downloader/dy0;


# instance fields
.field public final a:Lcom/liulishuo/filedownloader/BaseDownloadTask;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field public h:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/pw0;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/pw0;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/pw0;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lcom/shabakaty/downloader/hn1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/hn1<",
            "-",
            "Lcom/shabakaty/downloader/pw0;",
            "-",
            "Ljava/lang/Float;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lcom/shabakaty/downloader/rm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/rm1<",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lcom/shabakaty/downloader/tm1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tm1<",
            "-",
            "Lcom/shabakaty/downloader/pw0;",
            "Lcom/shabakaty/downloader/qv4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/liulishuo/filedownloader/BaseDownloadTask;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 1

    const-string v0, "task"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "externalId"

    invoke-static {p5, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/a90;->a:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/a90;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/a90;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/a90;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/a90;->e:Ljava/lang/String;

    .line 7
    iput-boolean p6, p0, Lcom/shabakaty/downloader/a90;->f:Z

    .line 8
    iput-boolean p7, p0, Lcom/shabakaty/downloader/a90;->g:Z

    .line 9
    sget-object p1, Lcom/shabakaty/downloader/a90$e;->r:Lcom/shabakaty/downloader/a90$e;

    iput-object p1, p0, Lcom/shabakaty/downloader/a90;->h:Lcom/shabakaty/downloader/tm1;

    .line 10
    sget-object p1, Lcom/shabakaty/downloader/a90$f;->r:Lcom/shabakaty/downloader/a90$f;

    iput-object p1, p0, Lcom/shabakaty/downloader/a90;->i:Lcom/shabakaty/downloader/tm1;

    .line 11
    sget-object p1, Lcom/shabakaty/downloader/a90$d;->r:Lcom/shabakaty/downloader/a90$d;

    iput-object p1, p0, Lcom/shabakaty/downloader/a90;->j:Lcom/shabakaty/downloader/tm1;

    .line 12
    sget-object p1, Lcom/shabakaty/downloader/a90$g;->r:Lcom/shabakaty/downloader/a90$g;

    iput-object p1, p0, Lcom/shabakaty/downloader/a90;->k:Lcom/shabakaty/downloader/hn1;

    .line 13
    sget-object p1, Lcom/shabakaty/downloader/a90$c;->r:Lcom/shabakaty/downloader/a90$c;

    iput-object p1, p0, Lcom/shabakaty/downloader/a90;->l:Lcom/shabakaty/downloader/tm1;

    .line 14
    sget-object p1, Lcom/shabakaty/downloader/a90$a;->r:Lcom/shabakaty/downloader/a90$a;

    iput-object p1, p0, Lcom/shabakaty/downloader/a90;->m:Lcom/shabakaty/downloader/rm1;

    .line 15
    sget-object p1, Lcom/shabakaty/downloader/a90$b;->r:Lcom/shabakaty/downloader/a90$b;

    iput-object p1, p0, Lcom/shabakaty/downloader/a90;->n:Lcom/shabakaty/downloader/tm1;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/rm1;)Lcom/shabakaty/downloader/dy0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/a90;->m:Lcom/shabakaty/downloader/rm1;

    return-object p0
.end method

.method public b(Lcom/shabakaty/downloader/hn1;)Lcom/shabakaty/downloader/dy0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/a90;->k:Lcom/shabakaty/downloader/hn1;

    return-object p0
.end method

.method public c(Lcom/shabakaty/downloader/tm1;)Lcom/shabakaty/downloader/dy0;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/a90;->n:Lcom/shabakaty/downloader/tm1;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "fileTitle: "

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/a90;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nfileImage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/a90;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\ntaskId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/a90;->a:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getId()I

    move-result v1

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nurl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/a90;->b:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\npath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/a90;->a:Lcom/liulishuo/filedownloader/BaseDownloadTask;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/BaseDownloadTask;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nexternalId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/a90;->e:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
