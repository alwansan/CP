.class public Lcom/connectsdk/service/capability/Launcher$AppState;
.super Ljava/lang/Object;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/service/capability/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppState"
.end annotation


# instance fields
.field public running:Z

.field public visible:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/connectsdk/service/capability/Launcher$AppState;->running:Z

    .line 3
    iput-boolean p2, p0, Lcom/connectsdk/service/capability/Launcher$AppState;->visible:Z

    return-void
.end method
