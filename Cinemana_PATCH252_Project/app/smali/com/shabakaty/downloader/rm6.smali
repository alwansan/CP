.class public final Lcom/shabakaty/downloader/rm6;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.3.0"


# static fields
.field public static i:Lcom/shabakaty/downloader/la7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/la7<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/shabakaty/downloader/om6;

.field public final d:Lcom/shabakaty/downloader/d54;

.field public final e:Lcom/shabakaty/downloader/uk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/uk4<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/shabakaty/downloader/uk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/uk4<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/ce6;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/d54;Lcom/shabakaty/downloader/om6;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/rm6;->h:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/rm6;->a:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/shabakaty/downloader/o70;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/rm6;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/shabakaty/downloader/rm6;->d:Lcom/shabakaty/downloader/d54;

    iput-object p3, p0, Lcom/shabakaty/downloader/rm6;->c:Lcom/shabakaty/downloader/om6;

    iput-object p4, p0, Lcom/shabakaty/downloader/rm6;->g:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/shabakaty/downloader/ul2;->a()Lcom/shabakaty/downloader/ul2;

    move-result-object p1

    new-instance p3, Lcom/shabakaty/downloader/cr6;

    const/4 v0, 0x2

    invoke-direct {p3, p4, v0}, Lcom/shabakaty/downloader/cr6;-><init>(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/ul2;->b(Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/rm6;->e:Lcom/shabakaty/downloader/uk4;

    .line 7
    invoke-static {}, Lcom/shabakaty/downloader/ul2;->a()Lcom/shabakaty/downloader/ul2;

    move-result-object p1

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance p3, Lcom/shabakaty/downloader/gr6;

    invoke-direct {p3, p2, v0}, Lcom/shabakaty/downloader/gr6;-><init>(Lcom/shabakaty/downloader/d54;I)V

    .line 9
    invoke-virtual {p1, p3}, Lcom/shabakaty/downloader/ul2;->b(Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/uk4;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/rm6;->f:Lcom/shabakaty/downloader/uk4;

    return-void
.end method
