.class public final Lcom/shabakaty/downloader/al0$a;
.super Ljava/lang/Object;
.source "DashManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/al0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/wh1;

.field public final b:Lcom/google/common/collect/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/p<",
            "Lcom/shabakaty/downloader/nk;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/shabakaty/downloader/b04;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/o01$b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/oq0;",
            ">;"
        }
    .end annotation
.end field

.field public final g:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wh1;Ljava/util/List;Lcom/shabakaty/downloader/b04;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/wh1;",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/nk;",
            ">;",
            "Lcom/shabakaty/downloader/b04;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/o01$b;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/oq0;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/al0$a;->a:Lcom/shabakaty/downloader/wh1;

    .line 3
    invoke-static {p2}, Lcom/google/common/collect/p;->z(Ljava/util/Collection;)Lcom/google/common/collect/p;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/al0$a;->b:Lcom/google/common/collect/p;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/al0$a;->c:Lcom/shabakaty/downloader/b04;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/al0$a;->d:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/shabakaty/downloader/al0$a;->e:Ljava/util/ArrayList;

    .line 7
    iput-object p6, p0, Lcom/shabakaty/downloader/al0$a;->f:Ljava/util/ArrayList;

    .line 8
    iput-wide p7, p0, Lcom/shabakaty/downloader/al0$a;->g:J

    return-void
.end method
