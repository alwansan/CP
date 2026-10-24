.class final Lcom/shabakaty/cinemana/ca1/Delete94$Snapshot;
.super Ljava/lang/Object;
.source "Delete94.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/ca1/Delete94;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Snapshot"
.end annotation


# instance fields
.field public final episodeNumber:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final path:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/R94;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Delete94$Snapshot;->id:Ljava/lang/String;

    const-string v0, "path"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/R94;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Delete94$Snapshot;->path:Ljava/lang/String;

    const-string v0, "title"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/R94;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/cinemana/ca1/Delete94$Snapshot;->title:Ljava/lang/String;

    const-string v0, "episodeNumber"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/R94;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/ca1/Delete94$Snapshot;->episodeNumber:Ljava/lang/String;

    return-void
.end method
