.class public final Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;
.super Ljava/lang/Object;
.source "LocalAccountStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/cinemana/local/LocalAccountStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation


# instance fields
.field public final id:Ljava/lang/String;

.field public final payload:Ljava/lang/String;

.field public final positionMs:J

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    const/16 p1, 0x400

    invoke-static {p2, p1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->access$100(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->title:Ljava/lang/String;

    const-wide/16 p1, 0x0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->positionMs:J

    const/16 p1, 0x4e20

    invoke-static {p5, p1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->access$100(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->payload:Ljava/lang/String;

    return-void
.end method
