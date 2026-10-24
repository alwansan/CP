.class public final Lcom/shabakaty/downloader/wk0;
.super Ljava/lang/Object;
.source "DaggerDownloaderComponent.java"

# interfaces
.implements Lcom/shabakaty/downloader/uy0;


# instance fields
.field public a:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/liulishuo/filedownloader/services/ForegroundServiceConfig;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/liulishuo/filedownloader/FileDownloader;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/data/db/DownloadsDatabase;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/kz0;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/uz0;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/qd4;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Landroid/app/NotificationManager;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/i13;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/mc4;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/ey0;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/i44;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lcom/shabakaty/downloader/oj3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/oj3<",
            "Lcom/shabakaty/downloader/az0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ow4;Lcom/shabakaty/downloader/cp6;Lcom/shabakaty/downloader/zl2;Lcom/shabakaty/downloader/xl2;Landroid/content/Context;Lcom/shabakaty/downloader/wk0$a;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p6, Lcom/shabakaty/downloader/x12;

    invoke-direct {p6, p5}, Lcom/shabakaty/downloader/x12;-><init>(Ljava/lang/Object;)V

    .line 3
    iput-object p6, p0, Lcom/shabakaty/downloader/wk0;->a:Lcom/shabakaty/downloader/oj3;

    .line 4
    new-instance p5, Lcom/shabakaty/downloader/s30;

    invoke-direct {p5, p4}, Lcom/shabakaty/downloader/s30;-><init>(Lcom/shabakaty/downloader/xl2;)V

    .line 5
    sget-object p6, Lcom/shabakaty/downloader/zu0;->c:Ljava/lang/Object;

    .line 6
    instance-of p6, p5, Lcom/shabakaty/downloader/zu0;

    if-eqz p6, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p6, Lcom/shabakaty/downloader/zu0;

    invoke-direct {p6, p5}, Lcom/shabakaty/downloader/zu0;-><init>(Lcom/shabakaty/downloader/oj3;)V

    move-object p5, p6

    .line 8
    :goto_0
    iput-object p5, p0, Lcom/shabakaty/downloader/wk0;->b:Lcom/shabakaty/downloader/oj3;

    .line 9
    iget-object p6, p0, Lcom/shabakaty/downloader/wk0;->a:Lcom/shabakaty/downloader/oj3;

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/c81;

    invoke-direct {v0, p4, p6, p5}, Lcom/shabakaty/downloader/c81;-><init>(Lcom/shabakaty/downloader/xl2;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;)V

    .line 11
    instance-of p4, v0, Lcom/shabakaty/downloader/zu0;

    if-eqz p4, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    new-instance p4, Lcom/shabakaty/downloader/zu0;

    invoke-direct {p4, v0}, Lcom/shabakaty/downloader/zu0;-><init>(Lcom/shabakaty/downloader/oj3;)V

    move-object v0, p4

    .line 13
    :goto_1
    iput-object v0, p0, Lcom/shabakaty/downloader/wk0;->c:Lcom/shabakaty/downloader/oj3;

    .line 14
    iget-object p4, p0, Lcom/shabakaty/downloader/wk0;->a:Lcom/shabakaty/downloader/oj3;

    .line 15
    new-instance p5, Lcom/shabakaty/downloader/kh0;

    const/4 p6, 0x1

    invoke-direct {p5, p3, p4, p6}, Lcom/shabakaty/downloader/kh0;-><init>(Lcom/shabakaty/downloader/zl2;Lcom/shabakaty/downloader/oj3;I)V

    .line 16
    instance-of p4, p5, Lcom/shabakaty/downloader/zu0;

    if-eqz p4, :cond_2

    goto :goto_2

    .line 17
    :cond_2
    new-instance p4, Lcom/shabakaty/downloader/zu0;

    invoke-direct {p4, p5}, Lcom/shabakaty/downloader/zu0;-><init>(Lcom/shabakaty/downloader/oj3;)V

    move-object p5, p4

    .line 18
    :goto_2
    iput-object p5, p0, Lcom/shabakaty/downloader/wk0;->d:Lcom/shabakaty/downloader/oj3;

    .line 19
    new-instance p4, Lcom/shabakaty/downloader/kh0;

    const/4 v0, 0x0

    invoke-direct {p4, p3, p5, v0}, Lcom/shabakaty/downloader/kh0;-><init>(Lcom/shabakaty/downloader/zl2;Lcom/shabakaty/downloader/oj3;I)V

    .line 20
    instance-of p3, p4, Lcom/shabakaty/downloader/zu0;

    if-eqz p3, :cond_3

    goto :goto_3

    .line 21
    :cond_3
    new-instance p3, Lcom/shabakaty/downloader/zu0;

    invoke-direct {p3, p4}, Lcom/shabakaty/downloader/zu0;-><init>(Lcom/shabakaty/downloader/oj3;)V

    move-object p4, p3

    .line 22
    :goto_3
    iput-object p4, p0, Lcom/shabakaty/downloader/wk0;->e:Lcom/shabakaty/downloader/oj3;

    .line 23
    new-instance p3, Lcom/shabakaty/downloader/q35;

    const/16 p5, 0x12

    invoke-direct {p3, p4, p5}, Lcom/shabakaty/downloader/q35;-><init>(Lcom/shabakaty/downloader/oj3;I)V

    .line 24
    instance-of p4, p3, Lcom/shabakaty/downloader/zu0;

    if-eqz p4, :cond_4

    goto :goto_4

    .line 25
    :cond_4
    new-instance p4, Lcom/shabakaty/downloader/zu0;

    invoke-direct {p4, p3}, Lcom/shabakaty/downloader/zu0;-><init>(Lcom/shabakaty/downloader/oj3;)V

    move-object p3, p4

    .line 26
    :goto_4
    iput-object p3, p0, Lcom/shabakaty/downloader/wk0;->f:Lcom/shabakaty/downloader/oj3;

    .line 27
    iget-object p4, p0, Lcom/shabakaty/downloader/wk0;->a:Lcom/shabakaty/downloader/oj3;

    .line 28
    new-instance p5, Lcom/shabakaty/downloader/n13;

    const/4 v1, 0x7

    invoke-direct {p5, p3, p4, v1}, Lcom/shabakaty/downloader/n13;-><init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;I)V

    .line 29
    instance-of p3, p5, Lcom/shabakaty/downloader/zu0;

    if-eqz p3, :cond_5

    goto :goto_5

    .line 30
    :cond_5
    new-instance p3, Lcom/shabakaty/downloader/zu0;

    invoke-direct {p3, p5}, Lcom/shabakaty/downloader/zu0;-><init>(Lcom/shabakaty/downloader/oj3;)V

    move-object p5, p3

    .line 31
    :goto_5
    iput-object p5, p0, Lcom/shabakaty/downloader/wk0;->g:Lcom/shabakaty/downloader/oj3;

    .line 32
    iget-object p3, p0, Lcom/shabakaty/downloader/wk0;->a:Lcom/shabakaty/downloader/oj3;

    .line 33
    new-instance p4, Lcom/shabakaty/downloader/qd0;

    invoke-direct {p4, p2, p3}, Lcom/shabakaty/downloader/qd0;-><init>(Lcom/shabakaty/downloader/cp6;Lcom/shabakaty/downloader/oj3;)V

    .line 34
    instance-of p2, p4, Lcom/shabakaty/downloader/zu0;

    if-eqz p2, :cond_6

    goto :goto_6

    .line 35
    :cond_6
    new-instance p2, Lcom/shabakaty/downloader/zu0;

    invoke-direct {p2, p4}, Lcom/shabakaty/downloader/zu0;-><init>(Lcom/shabakaty/downloader/oj3;)V

    move-object p4, p2

    .line 36
    :goto_6
    iput-object p4, p0, Lcom/shabakaty/downloader/wk0;->h:Lcom/shabakaty/downloader/oj3;

    .line 37
    iget-object p2, p0, Lcom/shabakaty/downloader/wk0;->f:Lcom/shabakaty/downloader/oj3;

    iget-object p3, p0, Lcom/shabakaty/downloader/wk0;->a:Lcom/shabakaty/downloader/oj3;

    .line 38
    new-instance p5, Lcom/shabakaty/downloader/r5;

    const/16 v1, 0x9

    invoke-direct {p5, p2, p3, p4, v1}, Lcom/shabakaty/downloader/r5;-><init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;I)V

    .line 39
    instance-of p2, p5, Lcom/shabakaty/downloader/zu0;

    if-eqz p2, :cond_7

    goto :goto_7

    .line 40
    :cond_7
    new-instance p2, Lcom/shabakaty/downloader/zu0;

    invoke-direct {p2, p5}, Lcom/shabakaty/downloader/zu0;-><init>(Lcom/shabakaty/downloader/oj3;)V

    move-object p5, p2

    .line 41
    :goto_7
    iput-object p5, p0, Lcom/shabakaty/downloader/wk0;->i:Lcom/shabakaty/downloader/oj3;

    .line 42
    iget-object p2, p0, Lcom/shabakaty/downloader/wk0;->g:Lcom/shabakaty/downloader/oj3;

    iget-object p3, p0, Lcom/shabakaty/downloader/wk0;->a:Lcom/shabakaty/downloader/oj3;

    .line 43
    new-instance p4, Lcom/shabakaty/downloader/r5;

    const/16 v1, 0x8

    invoke-direct {p4, p2, p5, p3, v1}, Lcom/shabakaty/downloader/r5;-><init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;I)V

    .line 44
    instance-of p2, p4, Lcom/shabakaty/downloader/zu0;

    if-eqz p2, :cond_8

    move-object v5, p4

    goto :goto_8

    .line 45
    :cond_8
    new-instance p2, Lcom/shabakaty/downloader/zu0;

    invoke-direct {p2, p4}, Lcom/shabakaty/downloader/zu0;-><init>(Lcom/shabakaty/downloader/oj3;)V

    move-object v5, p2

    .line 46
    :goto_8
    iput-object v5, p0, Lcom/shabakaty/downloader/wk0;->j:Lcom/shabakaty/downloader/oj3;

    .line 47
    iget-object v2, p0, Lcom/shabakaty/downloader/wk0;->a:Lcom/shabakaty/downloader/oj3;

    iget-object v3, p0, Lcom/shabakaty/downloader/wk0;->c:Lcom/shabakaty/downloader/oj3;

    iget-object v4, p0, Lcom/shabakaty/downloader/wk0;->f:Lcom/shabakaty/downloader/oj3;

    iget-object v6, p0, Lcom/shabakaty/downloader/wk0;->g:Lcom/shabakaty/downloader/oj3;

    .line 48
    new-instance p2, Lcom/shabakaty/downloader/px4;

    const/4 v7, 0x2

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/px4;-><init>(Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;Lcom/shabakaty/downloader/oj3;I)V

    .line 49
    instance-of p3, p2, Lcom/shabakaty/downloader/zu0;

    if-eqz p3, :cond_9

    goto :goto_9

    .line 50
    :cond_9
    new-instance p3, Lcom/shabakaty/downloader/zu0;

    invoke-direct {p3, p2}, Lcom/shabakaty/downloader/zu0;-><init>(Lcom/shabakaty/downloader/oj3;)V

    move-object p2, p3

    .line 51
    :goto_9
    iput-object p2, p0, Lcom/shabakaty/downloader/wk0;->k:Lcom/shabakaty/downloader/oj3;

    .line 52
    new-instance p3, Lcom/shabakaty/downloader/wy0;

    invoke-direct {p3, p1, p2, v0}, Lcom/shabakaty/downloader/wy0;-><init>(Lcom/shabakaty/downloader/ow4;Lcom/shabakaty/downloader/oj3;I)V

    .line 53
    instance-of p2, p3, Lcom/shabakaty/downloader/zu0;

    if-eqz p2, :cond_a

    goto :goto_a

    .line 54
    :cond_a
    new-instance p2, Lcom/shabakaty/downloader/zu0;

    invoke-direct {p2, p3}, Lcom/shabakaty/downloader/zu0;-><init>(Lcom/shabakaty/downloader/oj3;)V

    move-object p3, p2

    .line 55
    :goto_a
    iput-object p3, p0, Lcom/shabakaty/downloader/wk0;->l:Lcom/shabakaty/downloader/oj3;

    .line 56
    iget-object p2, p0, Lcom/shabakaty/downloader/wk0;->k:Lcom/shabakaty/downloader/oj3;

    .line 57
    new-instance p3, Lcom/shabakaty/downloader/wy0;

    invoke-direct {p3, p1, p2, p6}, Lcom/shabakaty/downloader/wy0;-><init>(Lcom/shabakaty/downloader/ow4;Lcom/shabakaty/downloader/oj3;I)V

    .line 58
    instance-of p1, p3, Lcom/shabakaty/downloader/zu0;

    if-eqz p1, :cond_b

    goto :goto_b

    .line 59
    :cond_b
    new-instance p1, Lcom/shabakaty/downloader/zu0;

    invoke-direct {p1, p3}, Lcom/shabakaty/downloader/zu0;-><init>(Lcom/shabakaty/downloader/oj3;)V

    move-object p3, p1

    .line 60
    :goto_b
    iput-object p3, p0, Lcom/shabakaty/downloader/wk0;->m:Lcom/shabakaty/downloader/oj3;

    return-void
.end method
