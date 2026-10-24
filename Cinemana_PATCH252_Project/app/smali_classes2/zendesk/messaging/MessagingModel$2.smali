.class public Lzendesk/messaging/MessagingModel$2;
.super Ljava/lang/Object;
.source "MessagingModel.java"

# interfaces
.implements Lzendesk/messaging/Engine$ConversationOnGoingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/messaging/MessagingModel;->startInitialEngine(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lzendesk/messaging/MessagingModel;

.field public final synthetic val$counter:Lzendesk/messaging/ObservableCounter;

.field public final synthetic val$enginesToRestore:Ljava/util/List;


# direct methods
.method public constructor <init>(Lzendesk/messaging/MessagingModel;Ljava/util/List;Lzendesk/messaging/ObservableCounter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/messaging/MessagingModel$2;->this$0:Lzendesk/messaging/MessagingModel;

    iput-object p2, p0, Lzendesk/messaging/MessagingModel$2;->val$enginesToRestore:Ljava/util/List;

    iput-object p3, p0, Lzendesk/messaging/MessagingModel$2;->val$counter:Lzendesk/messaging/ObservableCounter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
