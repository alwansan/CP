.class public Lcom/shabakaty/downloader/gf3$b;
.super Ljava/lang/Object;
.source "PrettyFormatStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/gf3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Lcom/shabakaty/downloader/kk2;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/gf3$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/gf3$b;->a:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/shabakaty/downloader/gf3$b;->b:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/shabakaty/downloader/gf3$b;->c:Z

    const-string p1, "PRETTY_LOGGER"

    .line 5
    iput-object p1, p0, Lcom/shabakaty/downloader/gf3$b;->e:Ljava/lang/String;

    return-void
.end method
