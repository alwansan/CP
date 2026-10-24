.class public final Lcom/shabakaty/downloader/wu2$a;
.super Ljava/lang/Object;
.source "MotionPhotoDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/wu2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/wu2$a;->a:Ljava/lang/String;

    .line 3
    iput-wide p3, p0, Lcom/shabakaty/downloader/wu2$a;->b:J

    .line 4
    iput-wide p5, p0, Lcom/shabakaty/downloader/wu2$a;->c:J

    return-void
.end method
