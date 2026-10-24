.class public final Lcom/shabakaty/downloader/tn0$d;
.super Ljava/lang/Object;
.source "DefaultDrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/tn0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:J

.field public final b:Z

.field public final c:Ljava/lang/Object;

.field public d:I


# direct methods
.method public constructor <init>(JZJLjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/tn0$d;->a:J

    .line 3
    iput-boolean p3, p0, Lcom/shabakaty/downloader/tn0$d;->b:Z

    .line 4
    iput-object p6, p0, Lcom/shabakaty/downloader/tn0$d;->c:Ljava/lang/Object;

    return-void
.end method
