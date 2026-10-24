.class final Lcom/shabakaty/cinemana/ca1/Continue106$Session;
.super Ljava/lang/Object;
.source "Continue106.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Continue106;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Session"
.end annotation


# instance fields
.field id:Ljava/lang/String;

.field last:J

.field muted:Z

.field restoring:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Continue106$Session;->id:Ljava/lang/String;

    return-void
.end method
