.class public Landroidx/work/impl/background/systemalarm/b;
.super Ljava/lang/Object;
.source "ConstraintsCommandHandler.java"


# static fields
.field public static final e:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:I

.field public final c:Landroidx/work/impl/background/systemalarm/d;

.field public final d:Lcom/shabakaty/downloader/k75;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "ConstraintsCmdHandler"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/ok2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/b;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroidx/work/impl/background/systemalarm/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/b;->a:Landroid/content/Context;

    .line 3
    iput p2, p0, Landroidx/work/impl/background/systemalarm/b;->b:I

    .line 4
    iput-object p3, p0, Landroidx/work/impl/background/systemalarm/b;->c:Landroidx/work/impl/background/systemalarm/d;

    .line 5
    iget-object p2, p3, Landroidx/work/impl/background/systemalarm/d;->s:Lcom/shabakaty/downloader/bl4;

    .line 6
    new-instance p3, Lcom/shabakaty/downloader/k75;

    const/4 v0, 0x0

    invoke-direct {p3, p1, p2, v0}, Lcom/shabakaty/downloader/k75;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/bl4;Lcom/shabakaty/downloader/j75;)V

    iput-object p3, p0, Landroidx/work/impl/background/systemalarm/b;->d:Lcom/shabakaty/downloader/k75;

    return-void
.end method
