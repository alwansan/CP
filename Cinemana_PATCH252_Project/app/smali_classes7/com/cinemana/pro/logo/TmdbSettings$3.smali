.class Lcom/cinemana/pro/logo/TmdbSettings$3;
.super Ljava/lang/Object;
.source "TmdbSettings.java"

# interfaces
.implements Lcom/cinemana/pro/logo/TmdbSettings$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cinemana/pro/logo/TmdbSettings;->openDialog(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/cinemana/pro/logo/TmdbSettings$3;->val$activity:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/cinemana/pro/logo/TmdbSettings$3;->val$activity:Ljava/lang/Object;

    invoke-static {v0}, Lcom/cinemana/pro/logo/TmdbSettings;->access$000(Ljava/lang/Object;)V

    return-void
.end method
