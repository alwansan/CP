.class public abstract Landroidx/work/impl/WorkDatabase;
.super Lcom/shabakaty/downloader/vt3;
.source "WorkDatabase.java"


# static fields
.field public static final n:J

.field public static final synthetic o:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/work/impl/WorkDatabase;->n:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/vt3;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract p()Lcom/shabakaty/downloader/iq0;
.end method

.method public abstract q()Lcom/shabakaty/downloader/bf3;
.end method

.method public abstract r()Lcom/shabakaty/downloader/ak4;
.end method

.method public abstract s()Lcom/shabakaty/downloader/u75;
.end method

.method public abstract t()Lcom/shabakaty/downloader/w75;
.end method

.method public abstract u()Lcom/shabakaty/downloader/e85;
.end method

.method public abstract v()Lcom/shabakaty/downloader/h85;
.end method
