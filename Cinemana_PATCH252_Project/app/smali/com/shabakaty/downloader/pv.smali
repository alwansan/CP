.class public final Lcom/shabakaty/downloader/pv;
.super Ljava/lang/Object;
.source "CaptureConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/pv$a;,
        Lcom/shabakaty/downloader/pv$b;
    }
.end annotation


# static fields
.field public static final g:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Lcom/shabakaty/downloader/o90$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/o90$a<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/hp0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/o90;

.field public final c:I

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ps;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z

.field public final f:Lcom/shabakaty/downloader/lk4;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.captureConfig.rotation"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 3
    sput-object v1, Lcom/shabakaty/downloader/pv;->g:Lcom/shabakaty/downloader/o90$a;

    .line 4
    const-class v0, Ljava/lang/Integer;

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/fg;

    const-string v2, "camerax.core.captureConfig.jpegQuality"

    invoke-direct {v1, v2, v0, v3}, Lcom/shabakaty/downloader/fg;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 6
    sput-object v1, Lcom/shabakaty/downloader/pv;->h:Lcom/shabakaty/downloader/o90$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/shabakaty/downloader/o90;ILjava/util/List;ZLcom/shabakaty/downloader/lk4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/hp0;",
            ">;",
            "Lcom/shabakaty/downloader/o90;",
            "I",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/ps;",
            ">;Z",
            "Lcom/shabakaty/downloader/lk4;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/pv;->a:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/pv;->b:Lcom/shabakaty/downloader/o90;

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/pv;->c:I

    .line 5
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/pv;->d:Ljava/util/List;

    .line 6
    iput-boolean p5, p0, Lcom/shabakaty/downloader/pv;->e:Z

    .line 7
    iput-object p6, p0, Lcom/shabakaty/downloader/pv;->f:Lcom/shabakaty/downloader/lk4;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/hp0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/pv;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
