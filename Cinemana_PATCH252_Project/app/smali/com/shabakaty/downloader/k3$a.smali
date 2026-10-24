.class public Lcom/shabakaty/downloader/k3$a;
.super Ljava/lang/Object;
.source "ActivityRecreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/k3;->b(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/k3$c;

.field public final synthetic s:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k3$c;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/k3$a;->r:Lcom/shabakaty/downloader/k3$c;

    iput-object p2, p0, Lcom/shabakaty/downloader/k3$a;->s:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k3$a;->r:Lcom/shabakaty/downloader/k3$c;

    iget-object v1, p0, Lcom/shabakaty/downloader/k3$a;->s:Ljava/lang/Object;

    iput-object v1, v0, Lcom/shabakaty/downloader/k3$c;->r:Ljava/lang/Object;

    return-void
.end method
